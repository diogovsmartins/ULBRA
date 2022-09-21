fun main() {
    val child = 5
    val adult = 28
    val senior = 87
    val isMonday = true

    println("O preço do bilhete de cinema para uma pessoa com idade é $child  \$${ticketPrice(child, isMonday)}.")
    println("O preço do bilhete de cinema para uma pessoa com idade é $adult  \$${ticketPrice(adult, isMonday)}.")
    println("O preço do bilhete de cinema para uma pessoa com idade é $senior  \$${ticketPrice(senior, isMonday)}.")
}

fun ticketPrice(age: Int, isMonday: Boolean): Int {
    //todo
    return  when(age){
        in 0..13 ->15
        in 13..60 -> if(isMonday) 25 else 30
        in 61 .. 100 -> 20
        else -> -1
    }
}