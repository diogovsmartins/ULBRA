import { useState } from 'react';
import Localization from './Localization';

export default function GalleryGreeting() {
  const [localization, setLocalization] = useState(false);

  async function toggleLocalization() {
    const response = fetch("https://viacep.com.br/ws/95560000/json");
    const data = await response.json();
    // eslint-disable-next-line no-console
    console.log({ fetchedValue: data });

    return setLocalization(!localization);
  }

  return (
    <div id="text-greeting-div">
      <h1 id="gallery-greeting-text">Seja bem vindo.</h1>
      <button type="button" onClick={toggleLocalization}> Localization </button>
      {localization && <Localization />}
    </div>
  );
}
