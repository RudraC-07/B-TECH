import pandas as pd
import joblib
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import make_pipeline
from sklearn.linear_model import LogisticRegression

# Load dataset
df = pd.read_csv('../cardio_train.csv', sep=';')

# Feature Engineering
# Convert age to years
df['age'] = df['age'] / 365
# Add BMI
df['BMI'] = df['weight'] / ((df['height'] / 100) ** 2)

# Define Features and Target
# Excluding 'id' based on previous context, and using features as refined in app.py
X = df[["age", "gender", "height", "weight", "ap_hi", "ap_lo", "cholesterol", "gluc", "smoke", "alco", "active", "BMI"]]
y = df['cardio']

# Split Data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Create Pipeline
pipeline = make_pipeline(StandardScaler(), LogisticRegression())

# Train Model
print("Training model...")
pipeline.fit(X_train, y_train)
print("Model training complete.")

# Save Model
joblib.dump(pipeline, 'cardio_model.pkl')
print(f"Model saved to cardio_model.pkl using scikit-learn version {joblib.__version__}")
