import { BrowserRouter, Route, Routes } from 'react-router-dom';
import RegistrationPage from './Pages/Contact';
import Home from './Pages/Home';
import ProductPage from './Pages/Product';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Home></Home>}></Route>
          <Route path="/contact" element={<RegistrationPage></RegistrationPage>}></Route>
          <Route path="/products" element={<ProductPage></ProductPage>}></Route>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
