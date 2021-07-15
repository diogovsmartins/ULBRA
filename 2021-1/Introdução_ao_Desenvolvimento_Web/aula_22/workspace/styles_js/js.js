function changeTheme() {
  var color = document.querySelector(".card-container");
  if (color.style.backgroundColor == "rgb(3, 32, 43)") {
    color.style.backgroundColor = "white";
    
    document.body.style.backgroundColor = "#e9999";
  } else {
    color.style.backgroundColor = "rgb(3, 32, 43)";
    document.body.style.backgroundColor = "black";
  }
}


function addToCart(){
    alert('Este item foi adicionado ao carrinho.')
}
function validate(){
  var item=document.getElementById('item').value;
  var username=document.getElementById('username').value;
  var email=document.getElementById('email').value;
  var erro=document.getElementById('preencher')
  console.log(item)
  console.log(username)
  console.log(email)
  if(item===''||item==null){
    erro.innerHTML+=('Item camp has blank spaces, please type something </br>')
  }
  if(username===''||username==null){
    erro.innerHTML+=('Username camp has blank spaces, please type something </br>')
  }
  if(email===''||email==null){
    erro.innerHTML+=('Email camp has blank spaces, please type something.</br>')
  }
}
