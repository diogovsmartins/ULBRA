fun main() {
    // Fill in the code.
    printFinalTemperature(27.0, "Celcius", "Fahrenheit") { (1.8) * it + 32 }
    printFinalTemperature(350.0, "Kelvin", "Celsius") { 350 - 273.15 }
    printFinalTemperature(10.0, "Fahrenheit", "Kelvin") { (10 + 459.67) * 5 / 9}
}

fun printFinalTemperature(
    initialMeasurement: Double,
    initialUnit: String,
    finalUnit: String,
    conversionFormula: (Double) -> Double
) {
    val finalMeasurement = String.format("%.2f", conversionFormula(initialMeasurement)) // two decimal places
    println("$initialMeasurement degrees $initialUnit is $finalMeasurement degrees $finalUnit.")
}