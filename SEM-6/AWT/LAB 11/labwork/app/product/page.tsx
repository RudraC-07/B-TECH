import { db } from '@/lib/db';
import React from 'react'

async function getAllProducts() {
  const[rows]:any = await db.query("SELECT * FROM product");
  return (
    <ul>
      {rows.map((pro:any)=>(
        <li key={pro.id}>{pro.title}-₹{pro.price}</li>
      ))}
    </ul>
  )
}

export default getAllProducts