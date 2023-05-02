// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freedomcars/buy_or_sell.dart';
import 'package:freedomcars/buy_screen.dart';
import 'package:freedomcars/request_parts.dart';
import 'package:freedomcars/sell_screen.dart';
import 'package:freedomcars/utils/routes.dart';
import 'package:freedomcars/view/Screens/accidental%20car%20damage/car_damage_form.dart';
import 'package:freedomcars/view/Screens/authentication/home_screen.dart';
import 'package:freedomcars/view/Screens/authentication/select_vehicle.dart';
import 'package:freedomcars/view/Screens/authentication/sighnin_screen.dart';
import 'package:freedomcars/view/Screens/authentication/signup_screen.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/help_screen.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/main_screen.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/navigation.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/request.dart';
import 'package:freedomcars/view/Screens/profile/about.dart';
import 'package:freedomcars/view/Screens/profile/edit_profile.dart';
import 'package:freedomcars/view/Screens/profile/support.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutesName.signIn:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.mainScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MainScreen());
      case RoutesName.requestSccreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Request());
      case RoutesName.help:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HelpScreen());
      case RoutesName.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileScreen());
      case RoutesName.navigation:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  Home());
      case RoutesName.editProfile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileScreen());
      case RoutesName.aboutUs:
        return MaterialPageRoute(
            builder: (BuildContext context) => const About());
      case RoutesName.support:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Support());
      case RoutesName.buyOrSell:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BuyOrSell());
      case RoutesName.selectVehicle:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SelectVehicle());
      case RoutesName.buyParts:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BuyScreen());
      case RoutesName.sellParts:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SellScreen());
      case RoutesName.carDamage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CarDamage());
      case RoutesName.requestParts:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RequestParts());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No Routes Found')),
          );
        });
    }
  }
}
