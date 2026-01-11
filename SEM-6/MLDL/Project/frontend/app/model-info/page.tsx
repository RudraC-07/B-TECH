"use client";

import { Activity, Database, FileText, Settings, Sliders } from "lucide-react";

export default function ModelInfoPage() {
  return (
    <div className="min-h-screen bg-muted/30 pt-32 pb-20 md:pt-40 md:pb-32">
      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="mb-16 text-center flex flex-col items-center">
          <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-primary/10 text-primary text-sm font-medium mb-6">
            <Settings size={16} />
            Technical Documentation
          </div>
          <h1 className="text-4xl font-bold text-primary mb-6">Model Information</h1>
          <p className="text-xl text-muted-foreground leading-relaxed">
            The Cardio Check Predictive Model employs a **Logistic Regression** classifier, optimized for binary classification tasks. It assesses cardiovascular risk by identifying linear relationships between 12 key clinical features and the likelihood of heart disease.
          </p>
        </div>

        <section className="mb-16">
          <h2 className="text-2xl font-bold text-foreground mb-8 flex items-center gap-2">
            <Sliders className="text-primary" />
            Input Features
          </h2>
          <div className="bg-muted/30 rounded-2xl p-8 border border-border">
            <div className="grid md:grid-cols-2 gap-x-12 gap-y-8">
              <FeatureItem label="Age" desc="Objective Feature (int)" />
              <FeatureItem label="Gender" desc="Objective Feature (categorical)" />
              <FeatureItem label="Height" desc="Objective Feature (int, cm)" />
              <FeatureItem label="Weight" desc="Objective Feature (float, kg)" />
              <FeatureItem label="Systolic Blood Pressure" desc="Examination Feature (ap_hi)" />
              <FeatureItem label="Diastolic Blood Pressure" desc="Examination Feature (ap_lo)" />
              <FeatureItem label="Cholesterol" desc="Examination Feature (3 levels)" />
              <FeatureItem label="Glucose" desc="Examination Feature (3 levels)" />
              <FeatureItem label="Smoking" desc="Subjective Feature (binary)" />
              <FeatureItem label="Alcohol Intake" desc="Subjective Feature (binary)" />
              <FeatureItem label="Physical Activity" desc="Subjective Feature (binary)" />
              <FeatureItem label="BMI" desc="Calculated Feature (Body Mass Index)" />
            </div>
          </div>
        </section>

        <section className="mb-16">
          <h2 className="text-2xl font-bold text-foreground mb-8 flex items-center gap-2">
            <Database className="text-chart-3" />
            Data Processing
          </h2>
          <div className="space-y-6">
            <div className="border-l-4 border-primary pl-6 py-2">
              <h3 className="font-bold text-foreground text-lg mb-2">Feature Engineering</h3>
              <p className="text-muted-foreground">
                Body Mass Index (BMI) is automatically calculated from weight and height inputs to provide an additional risk indicator for the model.
              </p>
            </div>
            <div className="border-l-4 border-chart-3 pl-6 py-2">
                <h3 className="font-bold text-foreground text-lg mb-2">Preprocessing</h3>
                <p className="text-muted-foreground">
                    Input data is scaled using <strong>StandardScaler</strong> to normalize feature distributions (mean=0, variance=1), ensuring that features with larger ranges (like weight or ap_hi) do not disproportionately influence the model coefficients.
                </p>
            </div>
          </div>
        </section>

        <section>
            <h2 className="text-2xl font-bold text-foreground mb-8 flex items-center gap-2">
                <Activity className="text-chart-1" />
                Pipeline Architecture
            </h2>
            <div className="bg-muted/30 rounded-2xl p-8 border border-border">
                <p className="text-muted-foreground leading-relaxed mb-6">
                    The model is implemented as a <strong>Scikit-Learn Pipeline</strong>, streamlining the workflow from raw data to prediction. This ensures that the exact same preprocessing steps applied during training are rigorously applied to new patient data.
                </p>
                
                <div className="space-y-4 mb-6">
                    <div className="bg-background/50 rounded-lg p-4 border border-border/50 font-mono text-sm">
                        <div className="flex items-center gap-2 text-primary mb-2 font-bold">
                            <span className="bg-primary/20 p-1 rounded">1</span> StandardScaler
                        </div>
                        <p className="text-muted-foreground pl-8">Standardizes features by removing the mean and scaling to unit variance.</p>
                    </div>
                    <div className="flex justify-center">
                        <div className="h-6 w-0.5 bg-border"></div>
                    </div>
                    <div className="bg-background/50 rounded-lg p-4 border border-border/50 font-mono text-sm">
                        <div className="flex items-center gap-2 text-primary mb-2 font-bold">
                            <span className="bg-primary/20 p-1 rounded">2</span> LogisticRegression
                        </div>
                        <p className="text-muted-foreground pl-8">
                            Hyperparameters: <span className="text-chart-2">max_iter=1000</span>, <span className="text-chart-2">random_state=0</span>
                        </p>
                    </div>
                </div>

                <div className="flex flex-wrap gap-3 pt-2">
                    <span className="px-3 py-1 bg-muted rounded-md text-sm font-medium text-muted-foreground">Logistic Regression</span>
                    <span className="px-3 py-1 bg-muted rounded-md text-sm font-medium text-muted-foreground">StandardScaler</span>
                    <span className="px-3 py-1 bg-muted rounded-md text-sm font-medium text-muted-foreground">Scikit-Learn</span>
                    <span className="px-3 py-1 bg-muted rounded-md text-sm font-medium text-muted-foreground">Binary Classification</span>
                </div>
            </div>
        </section>
      </div>
    </div>
  );
}

function FeatureItem({ label, desc }: { label: string, desc: string }) {
  return (
    <div>
      <h4 className="font-bold text-foreground">{label}</h4>
      <p className="text-sm text-muted-foreground">{desc}</p>
    </div>
  );
}
