import 'package:flutter/material.dart';

import '../model/menu.dart';
import 'Home.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tài khoản'),
          leading: IconButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => MyWidget(
                              title: 'BPQ Hub',
                            ))));
              }),
              icon: Icon(Icons.arrow_back)),
        ),
        drawer: const Menu(),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('image/jettt.jpg'),
              ),
            ),
            Text(
              'Game Quiz',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Information Personal',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            ),
            SizedBox(
              width: 150,
              height: 20,
              child: Divider(color: Colors.blueAccent.shade200),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  '+84 708610117',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'luuvinhquyen2k2@gmail.com',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white),
                ),
              ),
            ),
          ]),
        ));
  }
}