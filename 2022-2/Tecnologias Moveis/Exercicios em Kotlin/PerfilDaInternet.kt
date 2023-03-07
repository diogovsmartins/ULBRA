fun main() {
    val amanda = Person("Amanda", 33, "play tennis", null)
    val atiqah = Person("Atiqah", 28, "climb", amanda)

    println(amanda.showProfile())
    println(atiqah.showProfile())
}

class Person(val name: String, val age: Int, val hobby: String?, val referrer: Person?) {
    fun showProfile():String{
        var hasReferer= if(referrer==null) "Doesn't have a referrer." else "Has a refferrer called ${referrer.name}."
        return "\nName:${name} \nAge:${age} \nLikes to ${hobby} \n${hasReferer}"
    }
}