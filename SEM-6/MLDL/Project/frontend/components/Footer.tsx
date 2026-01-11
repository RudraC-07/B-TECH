"use client";

import { Heart, Github, FileText, Mail } from "lucide-react";
import { motion } from "framer-motion";
import Image from "next/image";

export default function Footer() {
  return (
    <footer className="bg-muted/30 mt-auto relative">
      <HeartbeatDivider />
      <div className="w-[95%] max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 pt-40 pb-12 relative z-10">
        <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-8">
          
          <div className="flex flex-col gap-2">
            <div className="flex items-center gap-2">
               <Image 
                  src="/heart.png" 
                  alt="Cardio Check Logo" 
                  width={26} 
                  height={26} 
                  className="w-[26px] h-[26px] object-contain"
                />
              <span className="font-bold text-xl text-primary">
                Cardio Check
              </span>
            </div>
            <p className="text-sm text-muted-foreground max-w-sm leading-relaxed">
              Advanced cardiovascular risk assessment powered by machine learning algorithms. 
              Designed for early detection and awareness.
            </p>
          </div>

          <div className="flex flex-col md:flex-row gap-8 md:gap-12">
            <div className="flex flex-col gap-4">
              <span className="text-sm font-semibold text-foreground tracking-wider uppercase">Resources</span>
              <div className="flex flex-col gap-2 text-sm text-muted-foreground">
                <a href="/model-info" className="hover:text-emerald-700 transition-colors flex items-center gap-2">
                  <FileText size={14} /> Documentation
                </a>
                <a href="#" className="hover:text-emerald-700 transition-colors flex items-center gap-2">
                  <Github size={14} /> Source Code
                </a>
              </div>
            </div>
            
            <div className="flex flex-col gap-4">
              <span className="text-sm font-semibold text-foreground tracking-wider uppercase">Contact</span>
              <div className="flex flex-col gap-2 text-sm text-muted-foreground">
                <a href="#" className="hover:text-emerald-700 transition-colors flex items-center gap-2">
                  <Mail size={14} /> Support
                </a>
              </div>
            </div>
          </div>

        </div>

        <div className="mt-12 pt-8 flex flex-col md:flex-row justify-between items-center gap-4 text-xs text-muted-foreground">
          <p>
            © {new Date().getFullYear()} Cardio Check Project. All rights reserved.
          </p>
          <div className="flex items-center gap-1">
             <span className="inline-block w-2 h-2 rounded-full bg-primary/80 animate-pulse"></span>
            <span>Made for better health</span>
          </div>
        </div>
      </div>
    </footer>
  );
}

function HeartbeatDivider() {
  return (
    <div 
      className="absolute top-0 left-1/2 -translate-x-1/2 w-full max-w-xl h-24 pointer-events-none overflow-hidden -translate-y-1/2"
      style={{
        maskImage: 'linear-gradient(to right, transparent, black 20%, black 80%, transparent)',
        WebkitMaskImage: 'linear-gradient(to right, transparent, black 20%, black 80%, transparent)'
      }}
    >
      {/* Main ECG Line */}
      <div className="absolute inset-0 flex items-center">
        <div className="relative w-full h-full overflow-hidden">
          <motion.div 
            className="absolute top-1/2 left-0 w-[4000px] h-16 -mt-8 flex items-center"
            animate={{
              x: ["-2000px", "0px"],
            }}
            transition={{
              duration: 30,
              ease: "linear",
              repeat: Infinity,
            }}
          >
             {/* Repeating Pattern - Enough to cover 4k screens twice */}
             <div className="flex w-full">
                {Array.from({ length: 20 }).map((_, i) => (
                  <svg key={i} viewBox="0 0 300 100" className="w-[300px] h-full stroke-primary fill-none drop-shadow-[0_0_15px_rgba(var(--primary),0.6)] shrink-0" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                      <path d="M0,50 L20,50 L30,50 L40,40 L50,60 L60,20 L70,80 L80,50 L100,50 L120,50 L130,50 L140,20 L150,80 L160,50 L180,50 L200,50 L210,50 L220,10 L230,90 L240,50 L260,50 L280,50 L300,50" />
                  </svg>
                ))}
             </div>
          </motion.div>
        </div>
      </div>
    </div>
  );
}
