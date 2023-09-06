
const data=[
    {name: "diogo", age: 23},
    {name: "daniel", age: 25},
    {name: "ariana", age: 21}
]


function initialize(){
   const list=document.getElementById("lista")
    list.innerHTML=componentToGenerateListOfUsers(data)

    const section=document.getElementById("sectionToTestAsync")
   
    
}

function componentToGenerateListOfUsers(data){
    return data.map(item => {
        return (
            `
                <li>${`name: ${item.name} | age: ${item.age}`}</li>
            `
        )}).join("")

}


async function consumeApi(){
   let returnedValue = fetch()
}