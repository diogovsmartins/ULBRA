/* eslint-disable jsx-a11y/label-has-associated-control */
import '../styles/Form.css';
import { useState } from 'react';

export default function Form({ userList }) {
  const [nameField, setUsername] = useState("");
  const [phoneField, setPhone] = useState("");
  const [photoUrlField, setPhotoUrl] = useState("");
  const [isStudentCheck, setStudentCheck] = useState(Boolean);
  const [isTicketPaidCheck, setIsTickerPaidCheck] = useState(Boolean);

  function handleSubmit(event) {
    event.preventDefault();

    const user = {
      name: nameField,
      phone: phoneField,
      photoUrl: photoUrlField,
      isStudent: isStudentCheck,
      isTicketPaid: isTicketPaidCheck };

    userList(user);
  }

  return (
    <form onSubmit={handleSubmit} id="form-style">
      <label> Name &nbsp;
        <input
          type="text"
          required
          value={nameField}
          onChange={(event) => setUsername(event.target.value)}
        />
      </label>
      <label> Phone &nbsp;
        <input
          type="text"
          required
          value={phoneField}
          onChange={(event) => setPhone(event.target.value)}
        />
      </label>
      <label> Photo URL &nbsp;
        <input
          type="text"
          required
          value={photoUrlField}
          onChange={(event) => setPhotoUrl(event.target.value)}
        />
      </label>
      <label> Are you a student? &nbsp;
        <input
          type="checkbox"
          value={isStudentCheck}
          onChange={() => setStudentCheck(!isStudentCheck)}
        />
      </label>
      <label> Have you already paid? &nbsp;
        <input
          type="checkbox"
          value={isTicketPaidCheck}
          onChange={() => setIsTickerPaidCheck(!isTicketPaidCheck)}
        />
      </label>

      <button type="submit"> Submit </button>
    </form>
  );
}
