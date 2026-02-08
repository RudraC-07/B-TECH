import Image from "next/image";
import Link from "next/link";

export default function Home() {
  return (
    <>
      <Link href={"/page/home"} className="mr-5">Home</Link>
      <Link href={"/page/about"} className="mr-5">About</Link>
      <Link href={"/page/contact"} className="mr-5">Contact</Link>
      <Link href={"/login"} className="mr-5">Login</Link>

    </>
  );
}
