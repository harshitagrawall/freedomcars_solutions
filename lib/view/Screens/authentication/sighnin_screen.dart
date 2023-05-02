import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freedomcars/resources/color.dart';
import 'package:freedomcars/resources/round_button.dart';
import 'package:freedomcars/resources/utils.dart';
import 'package:freedomcars/utils/routes.dart';
import 'package:freedomcars/view/Screens/authentication/home_screen.dart';
import 'package:freedomcars/view/Screens/authentication/signup_screen.dart';
import 'package:freedomcars/view_modal/auth_view_modal.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _passwordVisible = true;
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // final authviewModal = Provider.of<AuthViewModal>(context);
    var device_size = MediaQuery.of(context).size;
    var width = device_size.width;
    var height = device_size.height;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.emailAddress,
              focusNode: _emailFocusNode,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: "Mobile No",
              ),
              onFieldSubmitted: (val) {
                Utils.fieldFocusChange(
                    _emailFocusNode, _passwordFocusNode, context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: _passwordVisible,
              focusNode: _passwordFocusNode,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: "Password",
                  suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      child: _passwordVisible
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    style: const ButtonStyle(
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Forgot your password',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            RoundButton(
                // loading: authviewModal.loading,
                textColor: Colors.white,
                fontSize: 20,
                backgroundColor: Colors.blue,
                text: 'Sign In',
                ontap: () {
                  if (emailController.text.isEmpty) {
                    Utils.toastMessage('Please Enter Email');
                  } else if (passwordController.text.isEmpty) {
                    Utils.toastMessage('Please Enter Password');
                  } else if (passwordController.text.length < 3) {
                    Utils.toastMessage('Please Enter 6 digit Password');
                  } else {
                    Map data = {
                      'email': emailController.text.toString(),
                      // admin@mail.com
                      'password': passwordController.text.toString(),
                      // 12345
                    };
                    // authviewModal.logInApi(data, context);
                    print('api hit');
                  }
                }),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * .2),
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => SignUpScreen()));
                        Navigator.pushNamed(context, RoutesName.signup);
                      },
                      child: const Text(
                        "Need An Account? Sign Up",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )),
                ),
                TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => HomeScreen()));
                      Navigator.pushNamed(context, RoutesName.home);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
