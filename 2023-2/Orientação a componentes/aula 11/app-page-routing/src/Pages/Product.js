import Header from "../components/Header/Header";
import Navbar from "../components/Navbar/Navbar";
import Footer from "../components/Footer/Footer";
import Product from "../components/Product/Product";
import Gallery from "../components/Gallery/Gallery";
import { useEffect, useState } from "react";

// function renderProducts(){
//    const productList=[];
//    for (let i = 0; i < 4; i++) {
//    productList.push(<Product></Product>)
//    }
//    return  productList;
// }

// const [products, setProducts ] =useState();

// useEffect(async ()=>{
//    const result = await fetch("http://localhost:3001/products");
//    const products= await result.json();

//    setProducts(products);
// }, [])


export default function ProductPage(){


 return(
    <>
    <Header></Header>
    <Navbar></Navbar>
    <Gallery>
      {/* {products.map((product)=>{
         return <Product product={product} />
      })} */}
    </Gallery>
    <Footer></Footer>
    </>
 );
}