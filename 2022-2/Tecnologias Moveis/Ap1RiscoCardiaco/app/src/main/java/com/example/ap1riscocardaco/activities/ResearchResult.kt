package com.example.ap1riscocardaco.activities

import android.os.Parcel
import android.os.Parcelable


data class ResearchResult(
    var age: String?,
    var gender: String?
):Parcelable {
    constructor(parcel: Parcel) : this(
        parcel.readString(),
        parcel.readString()
    ) {
    }

    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeString(age)
        parcel.writeString(gender)
    }

    override fun describeContents(): Int {
        return 0
    }

    companion object CREATOR : Parcelable.Creator<ResearchResult> {
        override fun createFromParcel(parcel: Parcel): ResearchResult {
            return ResearchResult(parcel)
        }

        override fun newArray(size: Int): Array<ResearchResult?> {
            return arrayOfNulls(size)
        }
    }
}
