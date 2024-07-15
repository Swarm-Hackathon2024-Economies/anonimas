import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "TouchDownConnectSwarm",
  description: "Generated by anonimas",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
      <html lang="en">
      <meta
          name={"apple-itunes-app"}
          content={"app-clip-bundle-id=com.takutaku.SwiftApp.TouchDownSwarm.Clip"}
          app-id={"LANULV72W5"}
          app-clip-display={"card"}
      />
      <meta name="apple-itunes-app" content="app-id=6532610918, app-argument=https://apps.apple.com/jp/app/touchdownswarm/id6532610918?l=en-US"/>
      <body className={inter.className}>{children}</body>
      </html>
  );
}
