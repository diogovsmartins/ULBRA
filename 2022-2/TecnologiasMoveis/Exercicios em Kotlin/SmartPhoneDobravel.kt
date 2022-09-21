fun main() {
    open class Phone(var isScreenLightOn: Boolean = false) {
        open fun switchOn() {
            isScreenLightOn = true
        }

        fun switchOff() {
            isScreenLightOn = false
        }

        open fun checkPhoneScreenLight() {
            val phoneScreenLight = if (isScreenLightOn) "on" else "off"
            println("The phone screen's light is $phoneScreenLight.")
        }

    }
    class FoldablePhone(isScreenLightOn: Boolean) : Phone(isScreenLightOn) {

        var isFolded = true
        override fun switchOn() {
            isScreenLightOn = isFolded
        }

        fun foldPhone() {
            isFolded = true
        }

        fun unfoldPhone() {
            isFolded = false
        }

        override fun checkPhoneScreenLight() {
            val phoneScreenLight = if(isScreenLightOn && !isFolded)
                "Screen light is on"
            else "Screen light is off"
            println(phoneScreenLight)
        }

    }

    var foldablePhone=FoldablePhone(true)

    //screen light is expected to be turned off because phone is folded by default
    foldablePhone.checkPhoneScreenLight()
    foldablePhone.unfoldPhone()
    //screen light is expected to be turned on because phone is not folded anymore
    foldablePhone.checkPhoneScreenLight()

}