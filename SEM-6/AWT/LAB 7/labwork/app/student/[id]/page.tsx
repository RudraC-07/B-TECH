import React from "react";

async function studentwithid({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  return (
    <>
      <div>Student : {id}</div>
    </>
  );
}

export default studentwithid;
