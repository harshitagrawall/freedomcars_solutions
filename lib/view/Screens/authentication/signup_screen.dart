import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freedomcars/view/Screens/authentication/home_screen.dart';
import 'package:freedomcars/resources/round_button.dart';
import 'package:freedomcars/resources/utils.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _contactController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmationController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _confirmationFocusNode = FocusNode();
  final _otp =
      DateTime.now().millisecondsSinceEpoch.toString().substring(7, 13);

  late bool _passwordVisible = true;
  late bool _confirmationVisible = true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _contactController.dispose();
    _passwordController.dispose();
    _confirmationController.dispose();
    _nameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _mobileFocusNode.dispose();
    _confirmationFocusNode.dispose();
  }

  // void signInIt() {
  //   _auth
  //       .signInWithPhoneNumber(contactController.text.toString())
  //       .then((value) {});
  // }

  @override
  Widget build(BuildContext context)  {
    // final authviewModal = Provider.of<AuthViewModal>(context);
    var _device_size = MediaQuery.of(context).size;
    var height = _device_size.height;
    var width = _device_size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.blue
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _nameController,
                      focusNode: _nameFocusNode,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade900,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Name",
                      ),
                      onFieldSubmitted: (val) {
                        Utils.fieldFocusChange(
                            _nameFocusNode, _mobileFocusNode, context);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      keyboardType: TextInputType.number,
                      focusNode: _mobileFocusNode,
                      controller: _contactController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Mobile No",
                      ),
                      onFieldSubmitted: (val) {
                        Utils.fieldFocusChange(
                            _mobileFocusNode, _passwordFocusNode, context);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _passwordController,
                      focusNode: _passwordFocusNode,
                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            child: _passwordVisible
                                ? (const Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  ))
                                : const Icon(
                                    Icons.visibility,
                                    color: Colors.grey,
                                  ),
                          )),
                      onFieldSubmitted: (val) {
                        Utils.fieldFocusChange(_passwordFocusNode,
                            _confirmationFocusNode, context);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      color: Colors.white12,
                      child: TextFormField(
                        obscureText: _confirmationVisible,
                        focusNode: _confirmationFocusNode,
                        controller: _confirmationController,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "Confirm Password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _confirmationVisible = !_confirmationVisible;
                                });
                              },
                              child: _confirmationVisible
                                  ? (const Icon(
                                      Icons.visibility_off,
                                      color: Colors.grey,
                                    ))
                                  : const Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                    ),
                            )),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: Padding (
        padding: const EdgeInsets.only(bottom: 30),
        child: RoundButton(
            // loading: authviewModal.signUpLoading,
            textColor: Colors.white,
            fontSize: 20,
            backgroundColor: Colors.blue,
            text: 'Create Account',
            ontap: () {
              // if (_nameController.text.isEmpty) {
              //   Utils.toastMessage('Please Enter Name');
              // } else if (_contactController.text.isEmpty) {
              //   Utils.toastMessage('Please Enter Mobile No.');
              // } else if (_contactController.text.length < 10) {
              //   Utils.toastMessage('Please Enter 10 Digit Mobile No.');
              // } else if (_passwordController.text.toString() !=
              //     _confirmationController.text.toString()) {
              //   Utils.toastMessage('Sorry! Password Mismatch');
              // } else if (_passwordController.text.isEmpty) {
              //   Utils.toastMessage('Please Enter Password');
              // } else if (_passwordController.text.length < 3) {
              //   Utils.toastMessage('Please Enter 6 digit Password');
              // } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));

              // }
            }),
      ),
    );
  }
}
