import '../styles/Localization.css';

export default function Localization({ data }) {
  // eslint-disable-next-line no-console
  console.log({ dataValues: data });

  return (
    <div id="localization-div">
      <b>
        <p> Cep:     </p>
        <p> Bairro:  </p>
        <p> Horario: </p>
        <p> Cidade:  </p>
        <p> Av/Rua:  </p>
      </b>
    </div>
  );
}
