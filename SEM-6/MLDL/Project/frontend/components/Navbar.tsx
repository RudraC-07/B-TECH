"use client";

import Link from "next/link";
import { Activity, BarChart2, Info, FileWarning, Menu, X, Heart, Moon, Sun } from "lucide-react";
import { useState, useEffect } from "react";
import { useTheme } from "next-themes";
import { usePathname } from "next/navigation";
import { Button } from "@/components/ui/button";
import { Sheet, SheetContent, SheetTrigger, SheetTitle } from "@/components/ui/sheet";
import Image from "next/image";

export default function Navbar() {
  const [isOpen, setIsOpen] = useState(false);
  const pathname = usePathname();
  const { theme, setTheme } = useTheme();
  const [mounted, setMounted] = useState(false);

  useEffect(() => {
    setMounted(true);
  }, []);

  const navLinks = [
    { href: "/insights", icon: BarChart2, label: "Insights" },
    { href: "/model-info", icon: Info, label: "Model Info" },
    { href: "/disclaimer", icon: FileWarning, label: "Disclaimer" },
  ];

  return (
    <nav className="fixed top-6 left-1/2 -translate-x-1/2 z-50 w-[95%] max-w-6xl rounded-full bg-background/80 backdrop-blur-xl shadow-lg">
      <div className="mx-auto px-6">
        <div className="flex justify-between items-center h-14">
          {/* Logo */}
          <Link href="/" className="flex items-center gap-3 group">
            <div className="relative">
                <Image 
                  src="/heart.png" 
                  alt="Cardio Check Logo" 
                  width={34} 
                  height={34} 
                  className="w-[34px] h-[34px] object-contain drop-shadow-[0_0_15px_rgba(var(--primary),0.6)]"
                />
            </div>
            <div className="flex flex-col">
              <span className="font-bold text-xl text-primary">
                Cardio Check
              </span>
              <span className="text-xs text-muted-foreground">AI Health Prediction</span>
            </div>
          </Link>

          {/* Desktop Navigation - Centered */}
          <div className="hidden md:flex absolute left-1/2 -translate-x-1/2 items-center gap-1">
            {navLinks.map((link) => (
              <NavLink
                key={link.href}
                href={link.href}
                icon={link.icon}
                label={link.label}
                active={pathname === link.href}
              />
            ))}
          </div>

          {/* Right Side Actions */}
          <div className="hidden md:flex items-center gap-2">
            {/* Theme Toggle */}
            {mounted && (
              <Button
                variant="ghost" 
                size="icon"
                onClick={() => setTheme(theme === "dark" ? "light" : "dark")}
                className="mr-2 rounded-full hover:bg-primary/10 transition-colors"
              >
                {theme === "dark" ? (
                  <Sun className="h-5 w-5 text-primary" />
                ) : (
                  <Moon className="h-5 w-5 text-primary" />
                )}
                <span className="sr-only">Toggle theme</span>
              </Button>
            )}

            <Link href="/assess">
              <Button 
                size="lg"
                className="ml-2 px-6 rounded-full bg-primary hover:bg-primary/90 text-primary-foreground shadow-lg shadow-primary/20 hover:shadow-xl hover:shadow-primary/30 transition-all duration-300 border-0"
              >
                <Activity className="mr-2 h-4 w-4" />
                Predict
              </Button>
            </Link>
          </div>

          {/* Mobile Menu */}
          <div className="md:hidden">
            <Sheet open={isOpen} onOpenChange={setIsOpen}>
              <SheetTrigger asChild>
                <Button variant="ghost" size="icon" className="text-foreground">
                  <Menu className="h-6 w-6" />
                  <span className="sr-only">Toggle menu</span>
                </Button>
              </SheetTrigger>
              <SheetContent side="right" className="w-[300px] sm:w-[400px]">
                <SheetTitle className="sr-only">Mobile Navigation Menu</SheetTitle>
                <div className="flex flex-col gap-6 mt-8">
                  <div className="flex items-center gap-3 pb-4 border-b border-border">
                    <div className="p-2 rounded-lg bg-primary/10">
                      <Heart className="text-primary h-6 w-6" fill="currentColor" />
                    </div>
                    <div className="flex flex-col">
                      <span className="font-bold text-lg text-primary">
                        Cardio Check
                      </span>
                      <span className="text-xs text-muted-foreground">AI Health Prediction</span>
                    </div>
                  </div>

                  <div className="flex flex-col gap-2">
                    {navLinks.map((link) => (
                      <MobileNavLink
                        key={link.href}
                        href={link.href}
                        icon={link.icon}
                        label={link.label}
                        active={pathname === link.href}
                        onClick={() => setIsOpen(false)}
                      />
                    ))}
                  </div>

                  <Link href="/assess" onClick={() => setIsOpen(false)}>
                    <Button 
                      size="lg" 
                      className="w-full rounded-full bg-primary hover:bg-primary/90 text-primary-foreground shadow-lg shadow-primary/20"
                    >
                      <Activity className="mr-2 h-4 w-4" />
                      Predict
                    </Button>
                  </Link>

                   {/* Mobile Theme Toggle */}
                   {mounted && (
                    <Button
                      variant="outline" 
                      className="w-full justify-start gap-2 rounded-full border-primary/20 hover:bg-primary/5 hover:text-primary"
                      onClick={() => {
                        setTheme(theme === "dark" ? "light" : "dark");
                        setIsOpen(false);
                      }}
                    >
                       {theme === "dark" ? (
                        <>
                          <Sun className="h-4 w-4" />
                          <span>Switch to Light Mode</span>
                        </>
                      ) : (
                        <>
                          <Moon className="h-4 w-4" />
                          <span>Switch to Dark Mode</span>
                        </>
                      )}
                    </Button>
                  )}
                </div>
              </SheetContent>
            </Sheet>
          </div>
        </div>
      </div>
    </nav>
  );
}

function NavLink({ href, icon: Icon, label, active }: any) {
  return (
    <Link
      href={href}
      className={`flex items-center gap-2 px-4 py-2 rounded-lg text-sm font-medium transition-all duration-200 ${
        active
          ? "bg-primary/10 text-primary"
          : "text-muted-foreground dark:text-muted-foreground hover:text-emerald-700 hover:bg-emerald-700/10"
      }`}
    >
      <Icon className="h-4 w-4" />
      {label}
    </Link>
  );
}

function MobileNavLink({ href, icon: Icon, label, active, onClick }: any) {
  return (
    <Link
      href={href}
      onClick={onClick}
      className={`flex items-center gap-3 px-4 py-3 rounded-lg text-base font-medium transition-all duration-200 ${
        active
          ? "bg-primary/10 text-primary"
          : "text-muted-foreground dark:text-muted-foreground hover:text-emerald-700 hover:bg-emerald-700/10"
      }`}
    >
      <Icon className="h-5 w-5" />
      {label}
    </Link>
  );
}
