import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconsOfTopBar(){
  return Container(
      height: 150,
      padding: const EdgeInsets.only(top: 40),
      width: double.infinity,
      color: const Color(0xffa01213),
      child: Column(
        children:[
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.qr_code,color: Colors.white,size: 24,)
            ),
            const Text('BBC News',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.settings,color: Colors.white,size: 24,)
            ),
          ],
        ),]
      )
  );
}