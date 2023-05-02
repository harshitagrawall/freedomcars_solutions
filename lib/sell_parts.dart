import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostingScreen extends StatefulWidget {
  const PostingScreen({Key? key}) : super(key: key);

  @override
  State<PostingScreen> createState() => _PostingScreenState();
}

class _PostingScreenState extends State<PostingScreen> {
  File? _image;


  Future getImage(ImageSource source) async{
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    Navigator.pop(context);

    setState(() {
      this._image = imageTemporary;
    });
  }
  @override
  Widget build(BuildContext context) {
    var device_size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Sell Parts',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 20,
                        width: device_size.width * .25,
                        decoration: BoxDecoration(
                          border: Border.all(width: .5, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                            child: Text(
                          'Buy Products',
                          style: TextStyle(fontSize: 12),
                        )),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 20,
                        width: device_size.width * .25,
                        decoration: BoxDecoration(
                          border: Border.all(width: .5, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                            child: Text(
                          'Sell Products',
                          style: TextStyle(fontSize: 12),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          title: Text('Please Select One'),
                          actions: [
                            TextButton(
                                onPressed: (){
                             getImage(ImageSource.gallery);
                            }, child: Text('Gallery')),
                            TextButton(onPressed: (){
                              getImage(ImageSource.camera);
                            }, child: Text('Camera')),
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text('Cancel')),
                          ],
                      );
                    },
                  );


                },
                child: Container(
                  child: _image != null ? Image.file(_image!,height: 250 ,width: 250 ,fit: BoxFit.cover,) :  Image.asset('images/add image.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 4,
                  child: TextFormField(
                    // focusNode: _emailFocusNode,
                    // controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Car Model",
                    ),
                    // onFieldSubmitted: (val) {
                    //   Utils.fieldFocusChange(
                    //       _emailFocusNode, _passwordFocusNode, context);
                    // },
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 4,
                  child: TextFormField(
                    // focusNode: _emailFocusNode,
                    // controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Parts Name",
                    ),
                    // onFieldSubmitted: (val) {
                    //   Utils.fieldFocusChange(
                    //       _emailFocusNode, _passwordFocusNode, context);
                    // },
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 4,
                  child: TextFormField(
                    // focusNode: _emailFocusNode,
                    // controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Model No.",
                    ),
                    // onFieldSubmitted: (val) {
                    //   Utils.fieldFocusChange(
                    //       _emailFocusNode, _passwordFocusNode, context);
                    // },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 4,
                  child: TextFormField(
                    maxLines: 5,
                    // focusNode: _emailFocusNode,
                    // controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Description",
                    ),
                    // onFieldSubmitted: (val) {
                    //   Utils.fieldFocusChange(
                    //       _emailFocusNode, _passwordFocusNode, context);
                    // },
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('Sumbit',style: TextStyle(fontSize: 20),)),
            ],
          ),
        ),
      ),
    );
  }
}
