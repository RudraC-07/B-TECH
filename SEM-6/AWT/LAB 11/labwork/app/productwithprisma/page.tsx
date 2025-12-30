import { prisma } from "@/lib/prisma";
import Link from "next/link";
export default async function Products() {
  const products = await prisma.product.findMany();
  return (
    <>
      <ul>
      {products.map((pro:any)=>(
        <li key={pro.id}>{pro.title}-₹{pro.price}</li>
      ))}
    </ul>
    </>
  );
}
