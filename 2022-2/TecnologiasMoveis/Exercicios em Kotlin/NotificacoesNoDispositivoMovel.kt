fun main() {
    val morningNotification = 51
    val eveningNotification = 135

    println(printNotificationSummary(morningNotification))
    println(printNotificationSummary(eveningNotification))
}

fun printNotificationSummary(numberOfMessages: Int): String{
    if(numberOfMessages>99){
        return "You have ${99}+ notifications"
    }
    return "You have ${numberOfMessages} notifications"
}