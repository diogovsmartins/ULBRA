import "./Product.css";

export default function Product(){

    return(
        <div className="product-wrapper-div">
            <div>
                <img 
                className="product-image-style"
                src="https://wakefitdev.gumlet.io/img/npl_modified_images/darcy/sofa_WLCHRDRCFVBL/sofa_WLCHRDRCFVBL_1.jpg?w=732">
                </img>
            </div>
            <div className="product-description-div">
                <h3>product name</h3>
                <h3>value</h3>
            </div>
        </div>
    );
}