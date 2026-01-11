"use client";

import { useState } from "react";
import PredictionForm from "@/components/PredictionForm";
import ResultCard from "@/components/ResultCard";

import { Activity } from "lucide-react";

export default function AssessPage() {
  const [result, setResult] = useState<any>(null);
  const [formData, setFormData] = useState<any>(null);

  return (
    <div className="min-h-screen bg-muted/30 pt-32 pb-20 md:pt-40 md:pb-32">
      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-12 flex flex-col items-center">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-primary/10 text-primary text-sm font-medium mb-6">
              <Activity size={16} />
              AI Risk Analysis
            </div>

          <h1 className="text-4xl font-bold text-primary mb-4">
            Risk Assessment
          </h1>
          <p className="text-muted-foreground max-w-lg mx-auto">
            Fill out the clinical parameters below to generate an AI-powered cardiovascular risk profile.
          </p>
        </div>

        {result ? (
          <ResultCard result={result} inputData={formData} onReset={() => setResult(null)} />
        ) : (
          <PredictionForm onResult={(res, data) => { 
            setResult(res); 
            setFormData(data); 
            window.scrollTo({ top: 0, behavior: 'smooth' });
          }} />
        )}
      </div>
    </div>
  );
}
