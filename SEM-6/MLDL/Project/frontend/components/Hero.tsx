import Link from "next/link";
import { ArrowRight, Activity, ShieldCheck, Zap, BarChart3 } from "lucide-react";

export default function Hero() {
  return (
    <div className="relative pt-32 pb-20 lg:pt-40 lg:pb-32 overflow-hidden">
      {/* Background gradients */}
      <div className="absolute top-0 left-0 w-full h-full overflow-hidden -z-10">
        <div className="absolute top-[-10%] right-[-5%] w-[500px] h-[500px] rounded-full bg-primary/10 blur-[100px]" />
        <div className="absolute bottom-[-10%] left-[-10%] w-[600px] h-[600px] rounded-full bg-chart-4/10 blur-[100px]" />
      </div>

      <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 relative">
        <div className="grid lg:grid-cols-2 gap-12 lg:gap-32 items-center">
          {/* Text Content */}
          <div className="text-left">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-primary/10 border border-primary/20 text-primary text-sm font-medium mb-6">
              <span className="relative flex h-2 w-2">
                <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-primary opacity-75"></span>
                <span className="relative inline-flex rounded-full h-2 w-2 bg-primary"></span>
              </span>
              Early Warning System
            </div>
            
            <h1 className="text-5xl lg:text-7xl font-bold tracking-tight text-foreground leading-[1.1] mb-6">
              Cardiovascular <br />
              <span className="text-primary">
                Risk Assessment
              </span>
            </h1>
            
            <p className="text-xl text-muted-foreground mb-8 max-w-lg leading-relaxed">
              Our advanced AI model analyzes clinical variables to predict potential heart risks with precision, empowering you with actionable health insights.
            </p>
            
            <div className="flex flex-col sm:flex-row gap-4">
              <Link
                href="/assess"
                className="inline-flex items-center justify-center gap-2 bg-primary hover:bg-primary/90 text-primary-foreground px-8 py-4 rounded-xl font-bold text-lg transition-all shadow-xl shadow-primary/20 hover:shadow-primary/30 hover:-translate-y-1"
              >
                Start Assessment
                <ArrowRight size={20} />
              </Link>
              <Link
                href="/model-info"
                className="inline-flex items-center justify-center gap-2 bg-card hover:bg-emerald-700/10 hover:text-emerald-700 text-card-foreground border border-input px-8 py-4 rounded-xl font-semibold text-lg transition-all hover:border-sidebar-accent"
              >
                Learn More
              </Link>
            </div>

            <div className="mt-12 flex items-center gap-8 text-muted-foreground text-sm font-medium">
              <div className="flex items-center gap-2">
                <ShieldCheck size={18} className="text-chart-2" />
                <span>Secure Data</span>
              </div>
              <div className="flex items-center gap-2">
                <Zap size={18} className="text-chart-4" />
                <span>Instant Results</span>
              </div>
            </div>
          </div>

          {/* Visual/Stats Cards */}
          <div className="relative">
            <div className="absolute inset-0 bg-gradient-to-tr from-primary/5 to-chart-4/5 rounded-3xl transform rotate-3 scale-105 -z-10" />
            <div className="grid grid-cols-2 gap-4">
                <Card 
                    icon={<BarChart3 className="text-primary" size={24}/>}
                    title="72.8% Accuracy"
                    desc="Trained on 70,000+ clinical patient records with cross-validation."
                />
                <Card 
                    icon={<Zap className="text-chart-4" size={24}/>}
                    title="Instant Results"
                    desc="Real-time gradient boosting classification in under 5 seconds."
                />
                <Card 
                    icon={<ShieldCheck className="text-chart-2" size={24}/>}
                    title="Secure & Private"
                    desc="End-to-end encrypted processing with anonymous data handling."
                />
                <Card 
                    icon={<Activity className="text-chart-3" size={24}/>}
                    title="Confidence Scores"
                    desc="Predictions include probability-based confidence levels."
                />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

function Card({ icon, title, desc }: { icon: React.ReactNode, title: string, desc: string }) {
    return (
        <div className="bg-card p-6 rounded-2xl border border-border shadow-sm hover:shadow-xl hover:-translate-y-2 transition-all duration-300">
            <div className="mb-4 bg-primary/10 w-12 h-12 rounded-xl flex items-center justify-center">
                {icon}
            </div>
            <h3 className="font-bold text-foreground mb-2">{title}</h3>
            <p className="text-sm text-muted-foreground leading-snug">{desc}</p>
        </div>
    )
}
