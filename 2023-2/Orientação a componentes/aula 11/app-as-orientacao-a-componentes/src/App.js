import './App.css';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import Home from './pages/Home'
import RegistrationPage from './pages/Contact'
import ProductPage from './pages/ProductPage'
import { useState } from 'react';
import { ProductContext } from './ contexts/ProductContext';
import ProductDetailmentPage from './pages/ProductDetailmentPage';

function App() {

  const [products, setProducts]=useState();

  return (
    <div className="App">
      <ProductContext.Provider value={{products, setProducts}}>
        <BrowserRouter>
          <Routes>
            <Route path="/" element={ <Home /> }/>
            <Route path="/contact" element={ <RegistrationPage/> }/>
            <Route path="/products" element={ <ProductPage/> }/>
            <Route path="/products/:id" element={ <ProductDetailmentPage /> }/>
          </Routes>
        </BrowserRouter>
      </ProductContext.Provider>
    </div>
  );
}

export default App;
