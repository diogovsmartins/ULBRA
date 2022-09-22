package com.example.appgasolina

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val  button =findViewById<Button>(R.id.button)
        val alcoholValue=findViewById<EditText>(R.id.alcoholInputValue)
        val gasolineValue=findViewById<EditText>(R.id.gasolineInputValue)
        val textResult=findViewById<TextView>(R.id.textResult)

        button.setOnClickListener{
            textResult.text=compareGasToAlcohol(alcoholValue, gasolineValue)
        }
    }

    private fun compareGasToAlcohol(alcoholValue: EditText, gasolineValue: EditText):String{
        //Basta dividir o preço do litro do álcool pelo da gasolina.
        if(alcoholValue.text.isBlank() || gasolineValue.text.isBlank()) return "Please type something"
       val divResult= divideAlcoholByGasoline(alcoholValue, gasolineValue)
       return if (divResult<=0.7) "Alcohol is better" else "Gasoline is better"
    }

    private fun divideAlcoholByGasoline(alcoholValue: EditText, gasolineValue: EditText):Double{
        return gasolineValue.text.toString().toDouble()
            .div(alcoholValue.text.toString().toDouble())
    }
}