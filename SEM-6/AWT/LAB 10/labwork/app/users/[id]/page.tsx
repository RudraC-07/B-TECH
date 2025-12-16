import React from "react";

async function getUserById({ params }: { params: { id: string } }) {
  const { id } = await params;
  const res = await fetch(
    `https://67c684ca351c081993fd98c8.mockapi.io/user/users/${id}`
  );
  const user = await res.json();
  return (
    <>
      <h1 className="bg-green-200">User Details</h1>
      <hr />
      <div key={user.id}>
        <h3>{user.name}</h3>
        <p>{user.email}</p>
        <p>ID: {user.id}</p>
      </div>
    </>
  );
}

export default getUserById;
