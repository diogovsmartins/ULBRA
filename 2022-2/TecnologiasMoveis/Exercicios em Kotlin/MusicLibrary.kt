class MusicLibrary(val title:String,
           val artist:String,
           val year:Int,
           val playCount:Int) {
    val isPopular: Boolean
        get()=playCount>=1000

    fun printDescription(){
        println("${title}, from ${artist}, released in ${year}")
    }
}

fun main(){
    val armadinho=MusicLibrary("GO GO","BTS",2016,1000000)
    armadinho.printDescription()
    println(armadinho.isPopular)
}