from flask import Flask, render_template, request
import numpy as np
import pickle

app = Flask(__name__)

# Load trained pipeline model
pipeline = pickle.load(open("cardio_model.pkl", "rb"))

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/predict", methods=["POST"])
def predict():
    try:
        # Collect inputs from form
        age = int(request.form["age"])
        gender = int(request.form["gender"])
        height = int(request.form["height"])
        weight = int(request.form["weight"])
        ap_hi = int(request.form["ap_hi"])
        ap_lo = int(request.form["ap_lo"])
        cholesterol = int(request.form["cholesterol"])
        gluc = int(request.form["gluc"])
        smoke = int(request.form["smoke"])
        alco = int(request.form["alco"])
        active = int(request.form["active"])
        bmi = weight / ((height / 100) ** 2)
        
        # Arrange input exactly as training data
        input_data = np.array([[age, gender, height, weight,
                                ap_hi, ap_lo, cholesterol,
                                gluc, smoke, alco, active,bmi]])

        # Prediction
        prediction = pipeline.predict(input_data)[0]

        if prediction == 1:
            result = "⚠️ Cardiovascular Disease Detected"
        else:
            result = "✅ No Cardiovascular Disease Detected"

        return render_template("result.html", prediction=result)

    except Exception as e:
        return f"Error occurred: {e}"

if __name__ == "__main__":
    app.run(debug=True)
