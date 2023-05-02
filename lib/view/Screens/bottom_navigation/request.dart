import 'package:flutter/material.dart';
import 'package:freedomcars/utils/routes.dart';

class Request extends StatefulWidget {
  const Request({Key? key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  var myImages = [
    'images/audi.png',
    'images/bmw.jpg',
    'images/cheverolet.jpg',
    'images/datsun.jpg',
    'images/fiat.jpg',
    'images/force.png',
    'images/ford.jpg',
    'images/honda.jpg',
    'images/hyundai.png',
    'images/isuzu.png',
    'images/jaguar.jpg',
    'images/jeep.jpg',
    'images/kia.jpg',
    'images/land rover.jpg',
    'images/mahindra.png',
    'images/mercedes.jpg',
    'images/mg.png',
    'images/mini cooper.jpg',
    'images/mitsubishi.png',
    'images/nissan.jpg',
    'images/porche.jpg',
    'images/skoda.jpg',
    'images/ssangyong.png',
    'images/suzuki.png',
    'images/tata.png',
    'images/toyota.jpg',
    'images/volvo.jpg',
    'images/wolkswogan.jpg',
    'images/kia.jpg',
    'images/renault.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Request Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Search by Car Model or brand",
                      hintStyle: TextStyle(fontSize: 12),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 30,
                    childAspectRatio: .8 / .4,
                  ),
                  itemCount: myImages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => BuyOrSell()),
                          //   // (Route<dynamic> route) => false,
                          // );
                          Navigator.pushNamed(context, RoutesName.requestParts);
                        },
                        child: MyImages(myImages[index]));
                  },
                ),
              ),
            ),
          ],
        ),
      ));
  }
}

class MyImages extends StatelessWidget {
  late String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Image.asset(
          url,
          fit: BoxFit.contain,
        ),
      ),
    );
    // Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage(url),
    //       fit: BoxFit.fill,
    //     ),
    //   ),
    // );
  }

  MyImages(String url) {
    this.url = url;
  }
}