import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:Colors.blue,
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal:
                      18.0),
                  child: Text('Terms of Services',style: TextStyle(fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(Icons.navigate_next),
                )
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [Padding(
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 18.0),
                child: Text('App Version \n v17.3.1',style: TextStyle(fontWeight: FontWeight.w300),),
              )],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 18),
                    child: Text('Open Source Libraries',style: TextStyle(fontWeight: FontWeight.w300),)),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(Icons.navigate_next),
                )
              ],
            ),
          ),
          Container(
            height: .5,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16,horizontal: 18.0),
                  child: Text('Licenses and Registration',style: TextStyle(fontWeight: FontWeight.w300),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(Icons.navigate_next),
                )
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 1,),
        ],
      ),
    );
  }
}
