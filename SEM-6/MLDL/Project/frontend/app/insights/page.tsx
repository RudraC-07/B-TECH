"use client";

import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "../../components/ui/card";
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, Cell, PieChart, Pie, Legend } from 'recharts';
import { BarChart2 } from "lucide-react";

const METRICS_DATA = [
  { name: 'Accuracy', value: 0.728, color: '#3b82f6' },
  { name: 'Precision', value: 0.758, color: '#06b6d4' },
  { name: 'Recall', value: 0.665, color: '#8b5cf6' },
  { name: 'F1 Score', value: 0.708, color: '#ec4899' },
  { name: 'ROC AUC', value: 0.795, color: '#f59e0b' },
];

const CONFUSION_DATA = [
    { name: 'True Negative', value: 5481, color: '#22c55e' },
    { name: 'False Positive', value: 1437, color: '#ef4444' },
    { name: 'False Negative', value: 2268, color: '#f97316' },
    { name: 'True Positive', value: 4498, color: '#3b82f6' },
];

export default function InsightsPage() {
  return (
    <div className="min-h-screen bg-muted/30 pt-32 pb-20 md:pt-40 md:pb-32">
      <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="mb-12 text-center flex flex-col items-center">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-primary/10 text-primary text-sm font-medium mb-6">
              <BarChart2 size={16} />
              Performance Analytics
            </div>
            <h1 className="text-4xl font-bold text-primary mb-4">
            Model Insights
            </h1>
            <p className="text-muted-foreground max-w-2xl mx-auto">
            Deep dive into the performance metrics and evaluation of our Cardiovascular Disease Prediction Model.
            </p>
        </div>

        <div className="grid md:grid-cols-2 gap-8 mb-8">
            <Card className="bg-muted/10 backdrop-blur-sm border-border rounded-2xl shadow-sm">
                <CardHeader>
                    <CardTitle>Performance Metrics</CardTitle>
                    <CardDescription>Key evaluation indicators for the model</CardDescription>
                </CardHeader>
                <CardContent className="h-80">
                    <ResponsiveContainer width="100%" height="100%">
                        <BarChart data={METRICS_DATA} layout="vertical" margin={{ top: 5, right: 30, left: 20, bottom: 5 }}>
                            <CartesianGrid strokeDasharray="3 3" horizontal={true} vertical={false} strokeOpacity={0.1} />
                            <XAxis type="number" domain={[0, 1]} hide />
                            <YAxis dataKey="name" type="category" width={100} tick={{fill: 'currentColor', fontSize: 12}} />
                            <Tooltip content={<CustomTooltip />} cursor={{fill: 'transparent'}} />
                            <Bar dataKey="value" radius={[0, 4, 4, 0]} barSize={32}>
                                {METRICS_DATA.map((entry, index) => (
                                    <Cell key={`cell-${index}`} fill={entry.color} />
                                ))}
                            </Bar>
                        </BarChart>
                    </ResponsiveContainer>
                </CardContent>
            </Card>

            <Card className="bg-muted/10 backdrop-blur-sm border-border rounded-2xl shadow-sm">
                <CardHeader>
                    <CardTitle>Confusion Matrix Distribution</CardTitle>
                    <CardDescription>Breakdown of prediction outcomes</CardDescription>
                </CardHeader>
                <CardContent className="h-80 flex items-center justify-center">
                    <ResponsiveContainer width="100%" height="100%">
                        <PieChart>
                            <Pie
                                data={CONFUSION_DATA}
                                cx="50%"
                                cy="50%"
                                innerRadius={60}
                                outerRadius={100}
                                paddingAngle={5}
                                dataKey="value"
                            >
                                {CONFUSION_DATA.map((entry, index) => (
                                    <Cell key={`cell-${index}`} fill={entry.color} />
                                ))}
                            </Pie>
                            <Tooltip content={<CustomTooltip />} />
                            <Legend verticalAlign="bottom" height={36}/>
                        </PieChart>
                    </ResponsiveContainer>
                </CardContent>
            </Card>
        </div>

        <div className="grid md:grid-cols-3 gap-6">
            <MetricDetail 
                title="Accuracy" 
                value="72.8%" 
                desc="Percentage of correct predictions across all classes."
            />
             <MetricDetail 
                title="ROC AUC Score" 
                value="0.795" 
                desc="Ability to distinguish between disease and no-disease classes."
            />
             <MetricDetail 
                title="Recall" 
                value="66.5%" 
                desc="Ability to correctly identify actual positive cases."
            />
        </div>
      </div>
    </div>
  );
}

function MetricDetail({ title, value, desc }: { title: string, value: string, desc: string }) {
    return (
        <Card className="bg-muted/10 border-border rounded-xl shadow-sm">
            <CardHeader className="pb-2">
                <CardTitle className="text-2xl text-primary">{value}</CardTitle>
                <CardDescription className="text-foreground font-medium">{title}</CardDescription>
            </CardHeader>
            <CardContent>
                <p className="text-sm text-muted-foreground">{desc}</p>
            </CardContent>
        </Card>
    )
}

const CustomTooltip = ({ active, payload, label }: any) => {
    if (active && payload && payload.length) {
      return (
        <div className="bg-popover border border-border p-3 rounded-lg shadow-lg">
          <p className="font-medium text-popover-foreground mb-1">{payload[0].name}</p>
          <p className="text-primary font-bold">
            {typeof payload[0].value === 'number' 
                ? (payload[0].value < 1 ? `${(payload[0].value * 100).toFixed(1)}%` : payload[0].value) 
                : payload[0].value}
          </p>
        </div>
      );
    }
    return null;
  };
