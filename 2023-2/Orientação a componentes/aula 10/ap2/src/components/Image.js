import '../styles/Image.css';

export default function Image({ photoUrl }) {
  return (
    <div>
      <img
        className="attendant-profile-pic"
        alt="attendant profile pic"
        src={photoUrl}
        width={150}
        height={150}
      />
    </div>
  );
}
