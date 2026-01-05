import { prisma } from "@/lib/prisma";

export default async function ProductsPage() {
  const products = await prisma.products.findMany({
    orderBy: {
      created_at: "desc",
    },
  });

  return (
    <div style={{ padding: "20px" }}>
      <h1>Products</h1>

      {products.length === 0 ? (
        <p>No products found</p>
      ) : (
        <ul>
          {products.map((product : any) => (
            <li key={product.id}>
              <strong>{product.name}</strong> <br />
              Price: ₹{product.price.toString()} <br />
              Quantity: {product.quantity}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}
