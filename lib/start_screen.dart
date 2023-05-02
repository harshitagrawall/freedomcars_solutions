import 'package:flutter/material.dart';
import 'package:freedomcars/view/Screens/authentication/sighnin_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              // color: Colors.grey,
              width: double.infinity,
              child: SizedBox(
                height: 40,
              ),
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Let's get started",
                  style: TextStyle(fontSize: 30, color: Colors.grey),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.yellow),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
                            // Navigator.pushNamed(context, RoutesName.hello);
                          },
                          child: const Text(
                            'Continue ' + '→',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}