function firstLoad(){
    loadHomePage()
    document.getElementById("home").addEventListener("click", loadHomePage)
    document.getElementById("contact").addEventListener("click", loadContactPage)
    document.getElementById("about").addEventListener("click", loadAboutPage)
}

function loadHomePage(){
   const contentSection = document.getElementById("content")
   console.log(contentSection)

   contentSection.innerHTML = 
   `
   <h1> Home </h1>
   `
}

function loadAboutPage(){
    const contentSection = document.getElementById("content")
    console.log(contentSection)
 
    contentSection.innerHTML = 
    `
    <h1> About </h1>
    `
 }

 function loadContactPage(){
    const contentSection = document.getElementById("content")
 
    contentSection.innerHTML = 
    `
    <h1> Contact </h1>
    <form>
        <div class="form-group"></div>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required><br><br>

        <button type="button" class="btn-primary" id="submmitButton">Submit</button>
    </form>
    `
    const button=document.getElementById("submmitButton").addEventListener("click", submmitForm)
 }

 function submmitForm(){
    const name=document.getElementById("name")
    const email=document.getElementById("email")
    const phone=document.getElementById("phone")

    const contact={ name: name.value, email: email.value, phone: phone.value }

    const contentSection = document.getElementById("content")
 
    contentSection.innerHTML = 
    `
    <table class="table table-dark ">
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${contact.name}</td>
                <td>${contact.email}</td>
                <td>${contact.phone}</td>
            </tr>
        </tbody>
    </table>

    `
 }