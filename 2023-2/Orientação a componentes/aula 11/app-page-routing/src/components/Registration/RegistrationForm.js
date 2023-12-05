import Form from "../Form/Form";
import "../Registration/RegistrationForm.css";

export default function Registration(){

    return(
        <div id="registration-div">
            <div id="background-div">
                <img 
                id="image-styles"
                src="https://diamondstone.com.br/wp-content/uploads/2022/03/MARBLE-BLACK.jpg"
                alt="Black Marble stone">
                </img>
            </div>
            <div id="form-div">
                <Form></Form>
            </div>
        </div>
    );
}