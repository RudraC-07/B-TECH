from fastapi import FastAPI
from pydantic import BaseModel
import joblib
import pandas as pd
import os
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(title="Cardio Disease Prediction API")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

MODEL_PATH = os.path.join(os.path.dirname(__file__), "cardio_model.pkl")
model = joblib.load(MODEL_PATH)

# Features in the exact order they appeared in training data
# Note: 'id' was likely included in training, sending dummy 0. 'BMI' was NOT in training.
FEATURES = [
    "age", "gender", "height", "weight",
    "ap_hi", "ap_lo", "cholesterol",
    "gluc", "smoke", "alco", "active", "BMI"
]

class PatientData(BaseModel):
    age: int
    gender: int
    height: int
    weight: float
    ap_hi: int
    ap_lo: int
    cholesterol: int
    gluc: int
    smoke: int
    alco: int
    active: int

@app.post("/predict")
def predict(data: PatientData):
    input_data = data.model_dump()

    # Calculate BMI as it is a required feature
    # height is in cm, weight in kg
    input_data["BMI"] = input_data["weight"] / ((input_data["height"] / 100) ** 2)

    # Create dataframe with enforced column order
    df = pd.DataFrame([input_data])
    df = df[FEATURES]
    
    print("Received Data:", input_data)
    print("Processed DataFrame:\n", df)
    print("Model Classes:", model.classes_)

    # Predict
    pred = model.predict(df)[0]
    proba = model.predict_proba(df)[0]

    return {
        "prediction": int(pred),
        "probability_no_disease": round(float(proba[0]), 3),
        "probability_disease": round(float(proba[1]), 3)
    }
