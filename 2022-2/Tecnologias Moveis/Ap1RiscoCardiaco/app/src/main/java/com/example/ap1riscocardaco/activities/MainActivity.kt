package com.example.ap1riscocardaco.activities


import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.Toast
import com.example.ap1riscocardaco.databinding.ActivityMainBinding



class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding=ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.radioGroup.setOnCheckedChangeListener {
                group, checkedId ->
            val radio: RadioButton = findViewById(checkedId)
            Toast.makeText(applicationContext," On checked change :"+
                    " ${radio.text}",
                Toast.LENGTH_SHORT).show()
        }

        binding.nextPageButton1.setOnClickListener{
           getValuesFromFirstPage()
        }

    }

    private fun getValuesFromFirstPage(){
        val results =ResearchResult(binding.ageInput.text.toString(),getCheckedRadioButtonText())
        val intent= Intent(this, SecondActivity::class.java)
        intent.putExtra("object",results)
        startActivity(intent)
    }

    private fun getCheckedRadioButtonText():String?{
        val id: Int = binding.radioGroup.checkedRadioButtonId
        return if(id!=-1) findViewById<RadioButton>(id).text.toString() else null
    }
}