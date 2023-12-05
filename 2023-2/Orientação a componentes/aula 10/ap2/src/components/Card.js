import '../styles/Card.css';
import Image from './Image';

export default function Card({ user }) {
  // eslint-disable-next-line no-console
  console.log({ userFromCard: user });
  return (
    <div className="attendant-card-div">
      <div className="attendant-information-div">
        <p className="attendant-information"> {user.name} </p>
        <p className="attendant-information"> {user.phone} </p>
        <p className="attendant-information"> Student: {user.isStudent.toString()} </p>
        <p className="attendant-information"> TicketPaid: {user.isTicketPaid.toString()} </p>
      </div>
      <Image photoUrl={user.photoUrl} />
    </div>
  );
}
