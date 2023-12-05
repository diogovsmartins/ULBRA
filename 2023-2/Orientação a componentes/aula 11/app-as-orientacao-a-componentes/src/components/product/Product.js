import { useNavigate } from "react-router-dom";
import "./Product.css";

export default function Product({product}){

    const navigate=useNavigate();

    function handleClick(id){
      navigate(`/products/${id}`)
    }

    return(
    <div className="product-wrapper-div" key={product.id}  onClick={() => handleClick(product.id)}>
        <div>
            <img 
            className="product-image-style"
            src={product.imageUrl}
            alt={product.alt}>
            </img>
        </div>
        <div className="product-description-div">
            <h3>{product.name}</h3>
            <h3>{`R$ ${product.price}`}</h3>
        </div>
    </div>
    );
}