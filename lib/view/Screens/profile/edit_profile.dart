import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    setState(() {
      _nameController.value = const TextEditingValue(text: 'Mansi Shah');
      _mailController.value = const TextEditingValue(text: 'MansiShah26032@gmail.com');
      _contactController.value = const TextEditingValue(text: '9080809561');
    });
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _mailController.dispose();
    _contactController.dispose();
    super.dispose();
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor:Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: _width * 0.2),
          child: Column(
            children: [
              const Text(
                'Edit your Profile',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.grey,
                    child:  CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child:  Icon(size: 50, Icons.person,color: Colors.grey,),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.edit,
                      size: 22,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: _width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Name',
                        style: TextStyle(color: Colors.grey, fontSize: 11)),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: _width * 0.2, right: _width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _nameController,
                        onFieldSubmitted: (val){
                          return ;
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: _width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Email',
                        style: TextStyle(color: Colors.grey, fontSize: 11)),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: _width * 0.2, right: _width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: TextFormField(
                          controller: _mailController,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: _width * 0.2, right: _width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Contact',
                        style: TextStyle(color: Colors.grey, fontSize: 11)),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: _width * 0.2, right: _width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: TextFormField(
                          controller: _contactController,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration:  BoxDecoration(
                          color: Colors.blue,
                          borderRadius: const BorderRadius.all(Radius.circular(6.0))
                      ),
                      height: 40,
                      width: _width * 0.6,
                      child: const Center(
                          child: Text(
                            'Update Details',
                            style: TextStyle(color: Colors.white),
                          ))))
            ],
          ),
        ),
      ),
    );
  }
}
