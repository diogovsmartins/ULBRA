export default function Image({ alt, imageUrl }) {
  return (
    <div>
      <img alt={alt} src={imageUrl} width={150} height={150} />
    </div>
  );
}
