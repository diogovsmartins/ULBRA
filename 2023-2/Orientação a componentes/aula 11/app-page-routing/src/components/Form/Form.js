/* eslint-disable jsx-a11y/label-has-associated-control */
import "../Form/Form.css";
import { useState } from 'react';

export default function Form() {
  const [nameField, setUsername] = useState("");
  const [email, setEmail] = useState("");
  const [phoneField, setPhone] = useState("");
  const [city, setCity] = useState("");
  

  function handleSubmit(event) {
    event.preventDefault();

    const user = {
      name: nameField,
      phone: phoneField,
      email: email,
      city: city,
      }
      console.log(user)
    }

  return (
    <div id="form-div">
      <form onSubmit={handleSubmit} id="form-style">
        <label> Name &nbsp;
          <input
            type="text"
            required
            value={nameField}
            onChange={(event) => setUsername(event.target.value)}
          />
        </label>
        <label> Email &nbsp;
          <input
            type="text"
            required
            value={email}
            onChange={(event) => setEmail(event.target.value)}
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
        <label> City &nbsp;
          <input
            type="text"
            required
            value={city}
            onChange={(event) => setCity(event.target.value)}
          />
        </label>
        

        <button type="submit"> Submit </button>
      </form>
    </div>
  );
}