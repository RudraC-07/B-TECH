"use client"

import { useState } from "react"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"

export default function PredictForm() {
  const [result, setResult] = useState<any>(null)
  const [loading, setLoading] = useState(false)

  async function handleSubmit(e: any) {
  e.preventDefault()
  setLoading(true)

  const formData = new FormData(e.target)

  const data = {
    age: Number(formData.get("age")),
    gender: Number(formData.get("gender")),
    height: Number(formData.get("height")),
    weight: Number(formData.get("weight")),
    ap_hi: Number(formData.get("ap_hi")),
    ap_lo: Number(formData.get("ap_lo")),
    cholesterol: Number(formData.get("cholesterol")),
    gluc: Number(formData.get("gluc")),
    smoke: Number(formData.get("smoke")),
    alco: Number(formData.get("alco")),
    active: Number(formData.get("active")),
  }

  const res = await fetch("http://127.0.0.1:8000/predict", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data),
  })

  const json = await res.json()
  setResult(json)
  setLoading(false)
}

  return (
    <Card className="max-w-xl mx-auto">
      <CardHeader>
        <CardTitle>Cardio Disease Prediction</CardTitle>
      </CardHeader>

      <CardContent>
        <form onSubmit={handleSubmit} className="grid grid-cols-2 gap-4">

          <div>
            <Label>Age</Label>
            <Input name="age" required />
          </div>

          <div>
            <Label>Gender (1=M, 2=F)</Label>
            <Input name="gender" required />
          </div>

          <div>
            <Label>Height (cm)</Label>
            <Input name="height" required />
          </div>

          <div>
            <Label>Weight (kg)</Label>
            <Input name="weight" required />
          </div>

          <div>
            <Label>Systolic BP</Label>
            <Input name="ap_hi" required />
          </div>

          <div>
            <Label>Diastolic BP</Label>
            <Input name="ap_lo" required />
          </div>

          <div>
            <Label>Cholesterol</Label>
            <Input name="cholesterol" required />
          </div>

          <div>
            <Label>Glucose</Label>
            <Input name="gluc" required />
          </div>

          <div>
            <Label>Smoking (0/1)</Label>
            <Input name="smoke" required />
          </div>

          <div>
            <Label>Alcohol (0/1)</Label>
            <Input name="alco" required />
          </div>

          <div>
            <Label>Physically Active (0/1)</Label>
            <Input name="active" required />
          </div>

          <Button className="col-span-2" disabled={loading}>
            {loading ? "Predicting..." : "Predict"}
          </Button>
        </form>

        {result && (
          <div className="mt-4 text-sm">
            <p>
              <b>Prediction:</b>{" "}
              {result.prediction === 1 ? "Disease Detected" : "No Disease"}
            </p>
            <p>No Disease Probability: {result.probability_no_disease}</p>
            <p>Disease Probability: {result.probability_disease}</p>
          </div>
        )}
      </CardContent>
    </Card>
  )
}
