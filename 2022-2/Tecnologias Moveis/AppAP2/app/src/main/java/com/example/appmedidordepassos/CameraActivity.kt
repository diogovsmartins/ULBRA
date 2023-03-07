package com.example.appmedidordepassos

import android.app.Activity
import android.content.Intent
import android.graphics.BitmapFactory
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Environment
import android.provider.MediaStore
import android.widget.Button
import android.widget.ImageView
import android.widget.Toast
import androidx.core.content.FileProvider
import java.io.File

private const val REQUEST_CODE=12
private const val FILE_NAME="photo.jpg"
private lateinit var photoFile:File
class CameraActivity : AppCompatActivity() {
    //request code

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_camera)

        val btn=findViewById<Button>(R.id.take_photo_button)
        btn.setOnClickListener {
            val takePictureIntent=Intent(MediaStore.ACTION_IMAGE_CAPTURE)
            photoFile=getPhotoFile(FILE_NAME)
            val fileProvider= FileProvider.getUriForFile(this,"com.example.fileProvider", photoFile)
            takePictureIntent.putExtra(MediaStore.EXTRA_OUTPUT, fileProvider)

            if(takePictureIntent.resolveActivity(this.packageManager)!=null){
                startActivityForResult(takePictureIntent, REQUEST_CODE)
            }else {
                Toast.makeText(this,"unable to open camera", Toast.LENGTH_SHORT).show()
            }
        }
    }

    private fun getPhotoFile(fileName: String): File {
       //Use externalFilesDirectory to access package-specific directories.

        val storageDirectory=getExternalFilesDir(Environment.DIRECTORY_PICTURES)
        return File.createTempFile(fileName,".jpg",storageDirectory)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if(requestCode== REQUEST_CODE && resultCode== Activity.RESULT_OK) {
          //val takenImage=  data?.extras?.get("data") as Bitmap
            val takenImage=BitmapFactory.decodeFile(photoFile.absolutePath)
            val imageView=findViewById<ImageView>(R.id.photo_view)
            imageView.setImageBitmap(takenImage)
        }else {
            super.onActivityResult(requestCode, resultCode, data)
        }
    }
}