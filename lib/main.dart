import 'package:flutter/material.dart';
import 'package:freedomcars/start_screen.dart';
import 'package:freedomcars/utils/routes.dart';
import 'package:freedomcars/utils/routes_name.dart';
import 'package:freedomcars/view/Screens/authentication/sighnin_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freedom Cars',
      initialRoute: RoutesName.signIn,
      onGenerateRoute: Routes.generateRoute,
      // home: SignInScreen(),
    );
  }
}
