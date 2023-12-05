import Header from "../components/header/Header";
import Navbar from "../components/navbar/Navbar";
import Footer from "../components/footer/Footer";
import Registration from "../components/registration/RegistrationForm";

export default function ContactPage(){
    return (
      <>
        <Header></Header>
        <Navbar></Navbar>
        <Registration></Registration>
        <Footer></Footer>
      </>
    );
}