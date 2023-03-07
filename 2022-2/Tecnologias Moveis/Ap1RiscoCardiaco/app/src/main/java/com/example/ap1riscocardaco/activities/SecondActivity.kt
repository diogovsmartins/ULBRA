package com.example.ap1riscocardaco.activities

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.AutoCompleteTextView
import com.example.ap1riscocardaco.R
import com.example.ap1riscocardaco.databinding.ActivitySecondBinding

class SecondActivity : AppCompatActivity() {

    private lateinit var secondActivityBinding:ActivitySecondBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        secondActivityBinding=ActivitySecondBinding.inflate(layoutInflater)
        setContentView(secondActivityBinding.root)

        // get reference to the string array that we just created
        val languages = resources.getStringArray(R.array.programming_languages)
        // create an array adapter and pass the required parameter
        // in our case pass the context, drop down layout , and array.
        val arrayAdapter = ArrayAdapter(this, R.id.autoCompleteTextView, languages)
        // get reference to the autocomplete text view
        val autocompleteTV = findViewById<AutoCompleteTextView>(R.id.autoCompleteTextView)
        // set adapter to the autocomplete tv to the arrayAdapter
        autocompleteTV.setAdapter(arrayAdapter)

        retrieveData()
    }

    private fun retrieveData(){
        val objectu=intent.getParcelableExtra<ResearchResult>("object")
    }
}