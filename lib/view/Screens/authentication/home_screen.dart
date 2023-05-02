import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freedomcars/utils/routes.dart';
import 'package:freedomcars/view/Screens/authentication/select_vehicle.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/main_screen.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView(children: [
                SizedBox(
                    height: 600,
                    width: double.infinity,
                    child: Carousel(
                      dotSize: 6,
                      dotSpacing: 30,
                      dotPosition: DotPosition.bottomCenter,
                      images: [
                        Image.network(
                          'https://images.pexels.com/photos/2834653/pexels-photo-2834653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://images.pexels.com/photos/2568538/pexels-photo-2568538.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://www.india.com/auto/wp-content/uploads/2016/12/a26d5b4c4ac5097b1c4e4492ae0a8f5f_555X416_1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ],
                    )),
              ]),
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Let's Get Started",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
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
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Home()));
                            Navigator.pushNamed(context, RoutesName.navigation);
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

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }

  final urlImages = [
    'https://images.pexels.com/photos/2834653/pexels-photo-2834653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2568538/pexels-photo-2568538.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://www.india.com/auto/wp-content/uploads/2016/12/a26d5b4c4ac5097b1c4e4492ae0a8f5f_555X416_1.jpg',
  ];
}

//
// CarouselSlider.builder(
// options: CarouselOptions(height: 500),
// itemCount: urlImages.length,
// itemBuilder: (context, index, realIndex) {
// final urlImage = urlImages[index];
// return buildImage(urlImage, index);
// },
// ),
