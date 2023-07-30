import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget postsOfSpace(BuildContext context){
  TextEditingController title = TextEditingController();
  TextEditingController newsPost = TextEditingController();
  TextEditingController authorName = TextEditingController();
  final formKey = GlobalKey<FormState>();
  return Center(
    child: Container(
      //height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.only(right: 5,left: 5),
      padding: const EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black12
      ),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: title,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  labelText: 'Post news title',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Title must not be empty';
                }
                return null;
              },
             // onChanged: (value) => setState(() => title = value),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: newsPost,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  labelText: 'Post news description',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'News post description must not be empty';
                }
                return null;
              },
              // onChanged: (value) => setState(() => title = value),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: authorName,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  labelText: 'Post Author\'s name',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return 'Author name must not be empty';
                }
                return null;
              },
              // onChanged: (value) => setState(() => title = value),
            ),
            const SizedBox(height: 28,),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00C2FF),
              ),
              onPressed: () async {
                final isValid = formKey.currentState!.validate();
                if(isValid){

                }
              },
              child:const Text("Post news",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)
          ),)
          ],
        ),
      ),
    ),
  );
}