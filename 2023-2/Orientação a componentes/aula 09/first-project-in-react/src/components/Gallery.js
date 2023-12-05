export default function Gallery({ tittle, children }) {
  return (
    <div>
      <h1>{tittle}</h1>
      {children}
    </div>
  );
}
