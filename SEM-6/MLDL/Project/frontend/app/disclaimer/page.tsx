import { AlertTriangle, ShieldAlert, Activity, Info, FileWarning } from "lucide-react";
import { Card, CardContent, CardHeader, CardTitle } from "../../components/ui/card";

export default function DisclaimerPage() {
  return (
    <div className="min-h-screen bg-muted/30 pt-32 pb-20 md:pt-40 md:pb-32">
      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        
        <div className="text-center mb-16 flex flex-col items-center">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-destructive/10 text-destructive text-sm font-medium mb-6">
                <FileWarning size={16} />
                Important Notice
            </div>
            <h1 className="text-4xl font-bold text-destructive mb-6">
            Medical Disclaimer
            </h1>
            <p className="text-muted-foreground max-w-xl mx-auto text-lg leading-relaxed">
            Please read this important information regarding the intended use and limitations of this application.
            </p>
        </div>

        <div className="space-y-12">
            
            <Section 
                icon={<ShieldAlert className="h-5 w-5 text-destructive"/>}
                title="Not a Medical Device"
                borderColor="border-destructive"
                content={
                    <ul className="space-y-2">
                        <li>This application is a machine learning implementation for educational and demonstration purposes only.</li>
                        <li>It is NOT a certified medical device and has not been evaluated by regulatory authorities.</li>
                        <li>The results provided should never replace professional medical advice, diagnosis, or treatment.</li>
                    </ul>
                }
            />

            <Section 
                 icon={<Activity className="h-5 w-5 text-primary"/>}
                 title="Accuracy Limitations"
                 borderColor="border-primary"
                 content={
                     <ul className="space-y-2">
                         <li>The model achieves approximately ~73% accuracy on historical data.</li>
                         <li>False positives (healthy person predicted as at-risk) and false negatives (at-risk person predicted as healthy) are possible.</li>
                         <li>Demographic biases may exist within the training dataset which could affect prediction reliability for certain groups.</li>
                     </ul>
                 }
             />

            <Section 
                 icon={<Info className="h-5 w-5 text-chart-3"/>}
                 title="Data Privacy"
                 borderColor="border-chart-3"
                 content={
                     <ul className="space-y-2">
                         <li>Input data is processed locally or on a transient server for prediction only.</li>
                         <li>We do not store, share, or sell any personal health information entered into this form.</li>
                         <li>Please avoid entering real personally identifiable information (PII) like names or precise birth dates.</li>
                     </ul>
                 }
             />
        </div>

      </div>
    </div>
  );
}

function Section({ icon, title, content, borderColor }: { icon: React.ReactNode, title: string, content: React.ReactNode, borderColor: string }) {
    return (
        <div className={`border-l-4 ${borderColor} pl-12 py-2`}>
            <div className="flex items-center gap-3 mb-2">
                <div className="p-1.5 bg-background rounded-lg shadow-sm border border-border/50">
                    {icon}
                </div>
                <h3 className="font-bold text-foreground text-lg">{title}</h3>
            </div>
            <div className="text-muted-foreground leading-relaxed pl-1 text-sm">
                {content}
            </div>
        </div>
    )
}
