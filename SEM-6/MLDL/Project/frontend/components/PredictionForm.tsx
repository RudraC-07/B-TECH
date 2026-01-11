"use client";

import { useState } from "react";
import { AlertCircle, ArrowRight, Activity, Loader2 } from "lucide-react";
import { Card, CardContent } from "./ui/card";
import { Button } from "@/components/ui/button";

import { RadioGroup, RadioGroupItem } from "@/components/ui/radio-group";
import { Label } from "@/components/ui/label";

export default function PredictionForm({ onResult }: { onResult: (result: any, formData: any) => void }) {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [formData, setFormData] = useState({
    age: "", // years
    gender: "2", // 1: Female, 2: Male
    height: "", // cm
    weight: "", // kg
    ap_hi: "",
    ap_lo: "",
    cholesterol: "1",
    gluc: "1",
    smoke: "0",
    alco: "0",
    active: "1",
  });

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };
  
  const handleRadioChange = (name: string, value: string) => {
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError("");

    try {
      const age = parseInt(formData.age);
      const height = parseInt(formData.height);
      const weight = parseFloat(formData.weight);
      
      if (!age || !height || !weight || !formData.ap_hi || !formData.ap_lo) {
        throw new Error("Please fill in all required fields");
      }

      const payload = {
        age: age,
        gender: parseInt(formData.gender),
        height: height,
        weight: weight,
        ap_hi: parseInt(formData.ap_hi),
        ap_lo: parseInt(formData.ap_lo),
        cholesterol: parseInt(formData.cholesterol),
        gluc: parseInt(formData.gluc),
        smoke: parseInt(formData.smoke),
        alco: parseInt(formData.alco),
        active: parseInt(formData.active),
      };

      // Use relative path relying on Next.js Rewrite Proxy
      const response = await fetch("/api/predict", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(payload),
      });

      if (!response.ok) throw new Error("Failed to get prediction");

      const result = await response.json();
      onResult(result, formData);
      
    } catch (err: any) {
      setError(err.message || "Something went wrong");
    } finally {
      setLoading(false);
    }
  };

  return (
    <Card className="border border-border shadow-sm bg-muted/10 text-card-foreground rounded-2xl overflow-hidden">
      <CardContent className="p-8">
        <div className="flex items-center gap-3 mb-12">
          <Activity className="text-primary h-6 w-6" />
          <h2 className="text-xl font-semibold">Clinical Parameters</h2>
        </div>

        <form onSubmit={handleSubmit} className="space-y-8">
          <div className="grid gap-12"> {/* Single column layout */}
            
            {/* Patient Profile */}
            <div className="space-y-6">
              <h3 className="text-sm font-medium text-muted-foreground uppercase tracking-wider border-b border-border/50 pb-2">Patient Profile</h3>
              
              <InputGroup label="Age (Years)" name="age" type="number" placeholder="50" value={formData.age} onChange={handleChange} />
              
              <RadioInputGroup 
                label="Gender" 
                value={formData.gender} 
                onValueChange={(val: string) => handleRadioChange("gender", val)} 
                options={[
                  { label: "Male", value: "2" },
                  { label: "Female", value: "1" }
                ]} 
              />
              
              <InputGroup label="Height (cm)" name="height" type="number" placeholder="175" value={formData.height} onChange={handleChange} />
              <InputGroup label="Weight (kg)" name="weight" type="number" placeholder="75" value={formData.weight} onChange={handleChange} />
            </div>

            {/* Vitals & Labs */}
            <div className="space-y-6">
              <h3 className="text-sm font-medium text-muted-foreground uppercase tracking-wider border-b border-border/50 pb-2">Vitals & Labs</h3>
              
              <InputGroup label="Systolic Blood Pressure" name="ap_hi" type="number" placeholder="120" value={formData.ap_hi} onChange={handleChange} />
              <InputGroup label="Diastolic Blood Pressure" name="ap_lo" type="number" placeholder="80" value={formData.ap_lo} onChange={handleChange} />
              
              <RadioInputGroup 
                label="Cholesterol Levels" 
                value={formData.cholesterol} 
                onValueChange={(val: string) => handleRadioChange("cholesterol", val)} 
                options={[
                  { label: "Normal", value: "1" },
                  { label: "Above Normal", value: "2" },
                  { label: "Well Above Normal", value: "3" }
                ]} 
              />
              
              <RadioInputGroup 
                label="Glucose Levels" 
                value={formData.gluc} 
                onValueChange={(val: string) => handleRadioChange("gluc", val)} 
                options={[
                  { label: "Normal", value: "1" },
                  { label: "Above Normal", value: "2" },
                  { label: "Well Above Normal", value: "3" }
                ]} 
              />
            </div>

            {/* Lifestyle Factors */}
            <div className="space-y-6">
              <h3 className="text-sm font-medium text-muted-foreground uppercase tracking-wider border-b border-border/50 pb-2">Lifestyle Factors</h3>
              
              <RadioInputGroup 
                label="Visual Smoking Status" 
                value={formData.smoke} 
                onValueChange={(val: string) => handleRadioChange("smoke", val)} 
                options={[
                  { label: "No", value: "0" },
                  { label: "Yes", value: "1" }
                ]} 
              />

              <RadioInputGroup 
                label="Alcohol Intake" 
                value={formData.alco} 
                onValueChange={(val: string) => handleRadioChange("alco", val)} 
                options={[
                  { label: "No", value: "0" },
                  { label: "Yes", value: "1" }
                ]} 
              />

              <RadioInputGroup 
                label="Physical Activity" 
                value={formData.active} 
                onValueChange={(val: string) => handleRadioChange("active", val)} 
                options={[
                  { label: "No", value: "0" },
                  { label: "Yes", value: "1" }
                ]} 
              />
            </div>
          </div>

          {error && (
            <div className="p-4 rounded-lg bg-destructive/10 text-destructive flex items-center gap-2 text-sm">
              <AlertCircle size={16} />
              {error}
            </div>
          )}

          <Button type="submit" disabled={loading} className="w-full text-lg h-14 bg-primary hover:bg-primary/90 text-primary-foreground transition-all font-bold shadow-lg shadow-primary/20 border-0 mt-8">
            {loading ? <><Loader2 className="mr-2 h-5 w-5 animate-spin" /> Processing Analysis...</> : <>Analyze Risk Profile <ArrowRight className="ml-2 h-5 w-5" /></>}
          </Button>
        </form>
      </CardContent>
    </Card>
  );
}

function InputGroup({ label, ...props }: any) {
  return (
    <div className="space-y-3">
      <Label className="text-base font-medium text-foreground/80">{label}</Label>
      <input
        className="w-full px-4 py-3 rounded-lg border border-input bg-background/50 focus:bg-background focus:ring-2 focus:ring-primary/20 focus:border-primary outline-none transition-all"
        {...props}
      />
    </div>
  );
}

function RadioInputGroup({ label, options, value, onValueChange }: any) {
  return (
    <div className="space-y-3">
      <Label className="text-base font-medium text-foreground/80">{label}</Label>
      <RadioGroup onValueChange={onValueChange} value={value} className="flex flex-wrap gap-4">
        {options.map((opt: any) => (
          <div key={opt.value} className="flex items-center space-x-2">
            <RadioGroupItem value={opt.value} id={`${label}-${opt.value}`} />
            <Label htmlFor={`${label}-${opt.value}`} className="font-normal cursor-pointer text-base">
              {opt.label}
            </Label>
          </div>
        ))}
      </RadioGroup>
    </div>
  );
}
