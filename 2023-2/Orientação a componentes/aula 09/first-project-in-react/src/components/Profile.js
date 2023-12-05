export default function Profile({ name, job, description, bounty, children }) {
  return (
    <div>
      <h3>{name}</h3>
      {children}
      <ul>
        <li>{job}</li>
        <li>{description}</li>
        <li>{bounty}</li>
      </ul>
    </div>
  );
}
