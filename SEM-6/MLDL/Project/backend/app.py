from fastapi import FastAPI
from pydantic import BaseModel
import joblib
import pandas as pd
import os
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(title="Cardio Disease Prediction API")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:3000"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

MODEL_PATH = os.path.join(os.path.dirname(__file__), "cardio_model.pkl")
model = joblib.load(MODEL_PATH)

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

def calculate_bmi(weight, height_cm):
    return weight / ((height_cm / 100) ** 2)

@app.post("/predict")
def predict(data: PatientData):
    input_data = data.model_dump()

    input_data["BMI"] = calculate_bmi(
        input_data["weight"],
        input_data["height"]
    )

    df = pd.DataFrame([input_data])
    df = df[FEATURES]

    pred = model.predict(df)[0]
    proba = model.predict_proba(df)[0]

    return {
        "prediction": int(pred),
        "probability_no_disease": round(float(proba[0]), 3),
        "probability_disease": round(float(proba[1]), 3)
    }
