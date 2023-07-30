import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget imagePicker(){
  return Container(
    height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(right: 5,left: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black12
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          SizedBox(
            height: 35,
            width: 130,
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,),
                onPressed: () async {

                },
                child:const Text("Pick a photo",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
            ),)
        ],
      ),
  );
}