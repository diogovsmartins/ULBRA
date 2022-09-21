package com.example.conversordemoedas

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import java.text.DecimalFormat

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val button= findViewById<Button>(R.id.buttonToConvert)
        val currencyToConvert=findViewById<EditText>(R.id.currencyToConvert)
        val convertedCurrency=findViewById<TextView>(R.id.convertedCurrency)
        button.setOnClickListener{
            convertedCurrency.text="Converted amount: "+convert(currencyToConvert.text)
        }
    }

    fun convert (currencyToConvert: Editable): String{
        val dollarValue=5.19
        val df=DecimalFormat(".###")
        return df.format(currencyToConvert.toString().toDouble()*dollarValue)
    }

}