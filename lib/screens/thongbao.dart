import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tạo phòng'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => MyWidget(title: 'BPQ Hub'))));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 150,
                height: 60,
                child: Card(
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      'Thông Báo',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ), //Text
                  ), //Center
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color.fromARGB(255, 138, 160, 167),
                  width: 5,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.grey,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Thông Báo',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.grey,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Thông Báo',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.grey,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Thông Báo',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ),//Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.grey,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Thông Báo',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.grey,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Thông Báo',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ), //Text
                              ), //Center
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 70,
                            child: Card(
                              color: Colors.grey,
                              child: Center(
                                child: TextButton(
                                  child: Text(
                                    'Thông Báo',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: (() {}),
                                ),
                              ), //Center
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  
  }
}