import Image from "next/image";
import Link from "next/link";

export default function Home() {
  return (
  <>
    <Link href={'/admin'}>Admin</Link>
    <Link href={'/auth'}>Auth</Link>
    <Link href={'/client'}>Client</Link>
    <Link href={'/student'}>Student</Link>
  </>
  )
}
