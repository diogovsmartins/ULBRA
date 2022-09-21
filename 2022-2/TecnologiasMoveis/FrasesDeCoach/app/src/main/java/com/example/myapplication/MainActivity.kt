package com.example.myapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import kotlin.random.Random

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val btnTrigger=findViewById<Button>(R.id.btnTrigger);
        val textPhrase=findViewById<TextView>(R.id.coachPhrase);

        btnTrigger.setOnClickListener {
            textPhrase.setText(getCoachPhrase());

        }
    }

    fun getCoachPhrase(): String {
        val generatedNumber= Random.nextInt(0,15);
        val quote1="A motivação motiva a ação, faz-nos sair do lugar, enquanto a empolgação transforma-nos em pessoas alegres, mas inertes.";
        val quote2="A pessoa esperta é aquela que aprende com o erro e com os acertos dos outros.";
        val quote3="É necessário que você saia do padrão, recuse o óbvio, faça além do que é esperado.";

        return when(generatedNumber){
            in 0..5 ->   quote1
            in 5..10 ->  quote2
            in 10..15 ->  quote3
            else -> "No quote for you, go to work!"
        }

    }
}

