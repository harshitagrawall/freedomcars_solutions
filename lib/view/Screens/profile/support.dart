import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  final List<bool> _isOpen = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Freedom Car Solutions FAQs',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:Colors.blue,
      ),
      body: Column(
        children: <ExpansionPanelList>[
          ExpansionPanelList(
            animationDuration: const Duration(seconds: 1),
            elevation: 0,
            expansionCallback: (int i, bool isOpen) {
              setState(() {
                _isOpen[i] = !isOpen;
              });
            },
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isOpen) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 14.0),
                      child: Text(
                        'What is Freedom Car Solutions?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    );
                  },
                  body: const Padding(
                    padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      'Freedom Car Solutions is an all purpose app that helps the users with the repairing and auto parts related tasks and queries',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  isExpanded: _isOpen[0]),
              ExpansionPanel(
                  headerBuilder: (context, isOpen) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 8, top: 14.0),
                      child: Text(
                        'Who can use this app?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    );
                  },
                  body: const Padding(
                    padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      'Anyone willing to look to buy or sell auto parts and also for car servicing and all can use the app',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  isExpanded: _isOpen[1]),
              ExpansionPanel(
                  headerBuilder: (context, isOpen) {
                    return const Padding(
                        padding: EdgeInsets.only(left: 8, top: 14.0),
                        child: Text(
                          'What are the payment methods available?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ));
                  },
                  body: const Padding(
                    padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      'Freedom Car Solutions provides the options to pay in cash, through UPI and credit card.',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  isExpanded: _isOpen[2]),
              ExpansionPanel(
                  headerBuilder: (context, isOpen) {
                    return const Padding(
                        padding: EdgeInsets.only(left: 8, top: 14.0),
                        child: Text(
                          'How long do to the cashback last?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ));
                  },
                  body: const Padding(
                    padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      'The Cashback points usually last 365 days from the day of transaction.',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  isExpanded: _isOpen[3]),
            ],
          )
        ],
      ),
    );
  }
}
