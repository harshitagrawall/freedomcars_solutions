import 'package:flutter/material.dart';
import 'package:freedomcars/resources/utils.dart';
import 'package:freedomcars/utils/routes.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Your Profile',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
                    Navigator.pushNamed(context, RoutesName.editProfile);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Mansi Shah',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                                Text(
                                  'mansishah26032gmail.com',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'View Activity',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    ),
                                    const Icon(
                                      size: 10,
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  radius: 31,
                                  backgroundColor: Colors.grey,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      size: 50,
                                      Icons.person,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    // Navigator.pushNamed(context, RoutesName.orderHistory);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Your Order History'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    // Navigator.pushNamed(context, RoutesName.wallet);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text('Wallet'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    // Navigator.pushNamed(context, RoutesName.about);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.rate_review_outlined),
                    title: Text('Rating'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> About()));
                    Navigator.pushNamed(context, RoutesName.aboutUs);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.assignment_late_outlined),
                    title: Text('About Us'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Support()));
                    Navigator.pushNamed(context, RoutesName.support);
                  },
                  child: ListTile(
                    leading: Icon(Icons.contact_support_outlined),
                    title: Text('Support'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    // Navigator.pushNamed(context, RoutesName.help);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.report_gmailerrorred_outlined),
                    title: Text('Report'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ListTile(
                  leading: Icon(Icons.power_settings_new_outlined),
                  title: Text('Logout'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ));
  }
}
