import React from 'react'

async function getAllUsers() {
  const data = await fetch("https://67c684ca351c081993fd98c8.mockapi.io/user/users")
  const users = await data.json();
  return (
    <>
      <h1 className='bg-green-200'>All Users</h1><hr/>
      {users.map((user:any) => (
        <div key={user.id}>
          <h3>{user.name}</h3>
          <p>{user.email}</p>
          <hr/>
        </div>
      ))}
    </>
  )
}

export default getAllUsers