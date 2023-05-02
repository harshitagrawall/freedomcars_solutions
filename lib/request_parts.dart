import 'package:flutter/material.dart';

class RequestParts extends StatefulWidget {
  const RequestParts({Key? key}) : super(key: key);

  @override
  State<RequestParts> createState() => _RequestPartsState();
}

class _RequestPartsState extends State<RequestParts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sell Parts',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
        color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Contailner(
        child: Center(child: const Text('Hello')),
      ),
    );
  }
}
