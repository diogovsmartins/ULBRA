import Header from "../components/header/Header";
import Navbar from "../components/navbar/Navbar";
import Footer from "../components/footer/Footer";
import Product from "../components/product/Product";
import Gallery from "../components/gallery/Gallery";
import { useContext, useEffect, useState } from "react";
import { ProductContext } from "../ contexts/ProductContext";

export default function ProductPage(){

  const [products, setProducts ] = useState(null);
  const productContext=useContext(ProductContext)


  useEffect(
    ()=>{
      async function fetchData(){
         const result= await fetch('http://localhost:3001/products');
         const productList= await result.json();
         setProducts(productList)
         productContext.setProducts(productList)
         console.log(`Products fetched: ${JSON.stringify(productList)}`);
        }
        fetchData();
   }, [])

 return(
    <>
    <Header/>
    <Navbar/>
    <Gallery>
    {products ? (
            products.map((product) => (
              <Product
               product={product}
              />
            ))
          ) : (
            <h1>Loading...</h1>
          )}
    </Gallery>
    <Footer/>
    </>
 );
}
