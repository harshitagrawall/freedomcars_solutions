import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freedomcars/resources/utils.dart';
import 'package:freedomcars/utils/routes.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/navigation.dart';
import 'package:image_picker/image_picker.dart';

class CarDamage extends StatefulWidget {
  const CarDamage({Key? key}) : super(key: key);

  @override
  State<CarDamage> createState() => _CarDamageState();
}

class _CarDamageState extends State<CarDamage> {

  File? _image;

  final listItem2 = [
    'Please Select', 'Petrol', 'Diesel',
  ];

  final listItem = [
    'Please Select',
    'Accidental Or Damage',
    'Engine Seize',
    'Engine Overheat',
    'Gear Box Seize',
    'Water Damage',
    'Fired',
    'Mazor Electric Work',
    'Add More....',
  ];
  String? _selValue = 'Please Select';
  String? _selValue2 = 'Please Select';


  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    Navigator.pop(context);

    setState(() {
      this._image = imageTemporary;
    });
  }

  final _nameController = TextEditingController();
  final _vehicleNoController = TextEditingController();
  final _mobileController = TextEditingController();
  final _makeController = TextEditingController();
  final _modelController = TextEditingController();
  final _trasmissionController = TextEditingController();
  final _selvalueController = TextEditingController();
  final _locationController = TextEditingController();
  final _selvalue2Controller = TextEditingController();

  FocusNode _nameFocus = FocusNode();
  FocusNode _vehicleNoFocus = FocusNode();
  FocusNode _mobileNoFocus = FocusNode();
  FocusNode _makeFocus = FocusNode();
  FocusNode _modelFocus = FocusNode();
  FocusNode _trasmissionFocus = FocusNode();
  FocusNode _selvalueFocus = FocusNode();
  FocusNode _locationFocus = FocusNode();
  FocusNode _selvalue2Focus = FocusNode();


  @override
  Widget build(BuildContext context) {
    var device_size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Car Damage',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
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
                    focusNode: _nameFocus,
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Customer Name",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _nameFocus, _vehicleNoFocus, context);
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
                    focusNode: _vehicleNoFocus,
                    controller: _vehicleNoController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Vehicle No.",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _vehicleNoFocus, _mobileNoFocus, context);
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
                    keyboardType: TextInputType.number,
                    focusNode: _mobileNoFocus,
                    controller: _mobileController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Mobile No.",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _mobileNoFocus, _makeFocus, context);
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
                    focusNode: _makeFocus,
                    controller: _makeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "make",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _makeFocus, _modelFocus, context);
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
                    focusNode: _modelFocus,
                    controller: _modelController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Model",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _modelFocus, _trasmissionFocus, context);
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
                    focusNode: _trasmissionFocus,
                    controller: _trasmissionController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Transmission",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _trasmissionFocus, _selvalue2Focus, context);
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
                  child: DropdownButtonFormField(
                    focusNode: _selvalue2Focus,
                    value: _selValue2,
                    items: listItem2.map(
                            (e) => DropdownMenuItem(child: Text(e), value: e,)
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selValue2 = val as String;
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),

                    ),
                    onSaved: (val){
                      Utils.fieldFocusChange(
                          _selvalue2Focus, _locationFocus, context);
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
                    focusNode: _locationFocus,
                    controller: _locationController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Location",
                    ),
                    onFieldSubmitted: (val) {
                      Utils.fieldFocusChange(
                          _locationFocus, _selvalueFocus, context);
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
                  child: DropdownButtonFormField(
                    focusNode: _selvalueFocus,
                    value: _selValue,
                    items: listItem.map(
                            (e) => DropdownMenuItem(child: Text(e), value: e,)
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selValue = val as String;
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),

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
                      if(_nameController.text.isEmpty){
                        Utils.toastMessage('Please Enter Name');
                      } else if(_vehicleNoController.text.isEmpty){
                        Utils.toastMessage('Please Enter vehicle No.');
                      }else if(_mobileController.text.isEmpty){
                        Utils.toastMessage('Please Enter Mobile No.');
                      }else if(_makeController.text.isEmpty){
                        Utils.toastMessage('Please Enter Make');
                      }else if(_modelController.text.isEmpty){
                        Utils.toastMessage('Please Enter Model');
                      }else if(_trasmissionController.text.isEmpty){
                        Utils.toastMessage('Please Enter Transmission');
                      }else if(_selValue2 == 'Please Select'){
                        Utils.toastMessage('Please Select Fuel Type');
                      }else if(_locationController.text.isEmpty){
                        Utils.toastMessage('Please Enter Location');
                      }else if(_selValue == 'Please Select'){
                        Utils.toastMessage('Please Select Problem Type');
                      }else

                      // Navigator.pushAndRemoveUntil(context,
                      //     MaterialPageRoute(builder: (context) => Home()), (
                      //         route) => false);
                      Navigator.pushNamedAndRemoveUntil(context, RoutesName.navigation, (route) => false);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20, color: Colors.white,),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
