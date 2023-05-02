import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freedomcars/resources/utils.dart';
import 'package:freedomcars/utils/routes.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/navigation.dart';
import 'package:image_picker/image_picker.dart';

class SellScreen extends StatefulWidget {
  const SellScreen({Key? key}) : super(key: key);

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  File? _image;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    Navigator.pop(context);

    setState(() {
      this._image = imageTemporary;
    });
  }

  final _carModelController = TextEditingController();
  final _partsNameController = TextEditingController();
  final _modelNoController = TextEditingController();
  final _descriptionController = TextEditingController();

  FocusNode _carModelFocus = FocusNode();
  FocusNode _partsNameFocus = FocusNode();
  FocusNode _modelNoFocus = FocusNode();
  FocusNode _descriptionFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    var device_size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sell Parts',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.blue.shade800,
                        title: Text(
                          'Please Select One',
                          style: TextStyle(color: Colors.white),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                getImage(ImageSource.gallery);
                              },
                              child: Text(
                                'Gallery',
                                style: TextStyle(color: Colors.white),
                              )),
                          TextButton(
                              onPressed: () {
                                getImage(ImageSource.camera);
                              },
                              child: Text(
                                'Camera',
                                style: TextStyle(color: Colors.white),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  child: _image != null
                      ? Image.file(
                          _image!,
                          height: 250,
                          width: 250,
                          fit: BoxFit.cover,
                        )
                      : Image.asset('images/add image.png'),
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
                    focusNode: _carModelFocus,
                    controller: _carModelController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Car Model",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _carModelFocus, _partsNameFocus, context);
                    },
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
                    focusNode: _partsNameFocus,
                    controller: _partsNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Parts Name",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _partsNameFocus, _modelNoFocus, context);
                    },
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
                    focusNode: _modelNoFocus,
                    controller: _modelNoController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Model No.",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _modelNoFocus, _descriptionFocus, context);
                    },
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
                    focusNode: _descriptionFocus,
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Description",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 40,
                width: 100,
                color: Colors.blue,
                child: TextButton(
                    onPressed: () {
                      if(_carModelController.text.isEmpty){
                        Utils.toastMessage('Please Enter Car Modal ');
                      }else if (_partsNameController.text.isEmpty){
                        Utils.toastMessage('Please Enter Parts Name');
                      }else if (_modelNoController.text.isEmpty){
                        Utils.toastMessage('Please Enter Modal No.');
                      }else if (_descriptionController.text.isEmpty){
                        Utils.toastMessage('Please Enter Description');
                      }else
                      // Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => Home()),
                      //     (route) => false);
                      Navigator.pushNamedAndRemoveUntil(context, RoutesName.navigation, (route) => false);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
