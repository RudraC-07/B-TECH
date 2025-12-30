import Image from "next/image";
import Link from "next/link";

export default function Home() {
  return (
    <>
      <Link href={"/product"}>All_products</Link>
      <hr></hr>
      <Link href={"/productwithprisma"}>All_products_with_prisma</Link>
    </>
  );
}
