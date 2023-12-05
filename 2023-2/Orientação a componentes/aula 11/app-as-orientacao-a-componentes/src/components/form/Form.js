/* eslint-disable jsx-a11y/label-has-associated-control */
import "../form/Form.css";
import { useState } from 'react';

export default function Form() {
  const [productName, setProductName] = useState("");
  const [imageUrl, setImageUrl] = useState("");
  const [productPrice, setProductPrice] = useState("");
  const [description, setDescription] = useState("");
  

  function handleSubmit(event) {
    event.preventDefault();

    const product = {
      name: productName,
      price: productPrice,
      imageUrl: imageUrl,
      alt: description
      }

      console.log('Product to be registered: ', product)
      console.log('POST status: ',postProduct(product));
      setProductName('');
      setImageUrl('');
      setProductPrice('');
      setDescription('');

    }

    async function postProduct(product){
      const postProductRequest = await fetch('http://localhost:3001/products', {
        body: JSON.stringify(product),
        method: 'POST',
        headers:{
          'Content-Type': 'application/json'
        }
      });
      return await postProductRequest.json();
    }

  return (
    <div id="form-div">
      <form onSubmit={handleSubmit} id="form-style">
      <h2>Register a product</h2>
        <label> Name &nbsp;
          <input
            type="text"
            required
            value={productName}
            onChange={(event) => setProductName(event.target.value)}
          />
        </label>
        <label> Image URL &nbsp;
          <input
            type="text"
            required
            value={imageUrl}
            onChange={(event) => setImageUrl(event.target.value)}
          />
        </label>
        <label> Price &nbsp;
          <input
            type="number"
            required
            value={productPrice}
            onChange={(event) => setProductPrice(event.target.value)}
          />
        </label>
        <label> Description &nbsp;
          <input
            type="text"
            required
            value={description}
            onChange={(event) => setDescription(event.target.value)}
          />
        </label>
        

        <button type="submit"> Submit </button>
      </form>
    </div>
  );
}