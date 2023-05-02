import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freedomcars/buy_or_sell.dart';
import 'package:freedomcars/utils/routes.dart';
import 'package:freedomcars/view/Screens/accidental%20car%20damage/car_damage_form.dart';
import 'package:freedomcars/sell_parts.dart';
import 'package:freedomcars/view/Screens/authentication/select_vehicle.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final url = [
    'images/banner1.jpg',
    'images/banner2.jpg',
    'images/banner3.jpg',
    'images/banner4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var device_size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on, size: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        'Onam Plaza',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        'Onam Plaza building, Old Palasia, Near Industry House',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),

                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText: "Search by Car Model or brand",
                        hintStyle: TextStyle(fontSize: 12),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .8,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                //   borderRadius: BorderRadius.circular(30),
                // ),
                height: 200,
                child: CarouselSlider.builder(
                  itemCount: url.length,
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    // reverse: true,
                    autoPlayInterval: Duration(seconds: 2),
                  ),
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = url[index];
                    return buildImage(urlImage, index);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Buy Or Sell Vehicle Parts',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schyler'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SelectVehicle()));
                    Navigator.pushNamed(context, RoutesName.selectVehicle);
                  },
                  child: Container(
                    width: device_size.width * .8,
                    height: device_size.width * .5,
                    child: Image.asset(
                      alignment: Alignment.bottomCenter,
                      'images/banner6.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Accidental Car Damage',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schyler'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => CarDamage()));
                    Navigator.pushNamed(context, RoutesName.carDamage);
                  },
                  child: Container(
                    width: device_size.width * .8,
                    height: device_size.width * .5,
                    child: Image.asset(
                      alignment: Alignment.bottomCenter,
                      'images/car repair.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildImage(String urlImage, int index) {
    return Image.asset(
      urlImage,
      fit: BoxFit.contain,
    );
  }
}
