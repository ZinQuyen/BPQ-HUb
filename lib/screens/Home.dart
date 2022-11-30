import 'package:flutter/material.dart';
import 'package:phan04_baitap1/quiz/componets/level.dart';
import 'package:phan04_baitap1/screens/room.dart';
import 'package:phan04_baitap1/screens/thongbao.dart';

import '../quiz/componets/level.dart';
import '../quiz/quiz_screen.dart';
import '../screens/Shop.dart';
import '../model/menu.dart';
import 'room.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.title});
  final String title;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
      Widget choidon = SizedBox(
      width: 170,
      height: 70,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueAccent),
          
        ),
        onPressed: () => {
           Navigator.push(context, MaterialPageRoute(builder: (context) => LevelScreen(),))
        },
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text('PLAY MATCH',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );

    Widget choidk = SizedBox(
      width: 170,
      height: 70,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(Colors.red.withOpacity(0.8)),
        ),
        onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => RoomScreen(),))
        },
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text('RANKING',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ),
    );
    Widget shop = SizedBox(
      width: 170,
      height: 70,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
        ),
        onPressed: () => {
          Navigator.of(context).popUntil((route) => route.isFirst),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Shopping()))
        },
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text('SHOP',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ),
    );

    Widget Context = Container(
      width: MediaQuery.of(context).size.width / 1.7,
      height: 400,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 90),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        choidon,
        Padding(padding: const EdgeInsets.all(10)),
        choidk,
        Padding(padding: const EdgeInsets.all(10)),
        shop
      ]),
    );

    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
            }), icon: Icon(Icons.notifications_active))
          ],
          title: Text('Phi ngu'),
        ),
        drawer: const Menu(),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/b.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(
                              Icons.favorite,
                              size: 50,
                              color: Colors.blue,
                            ),
                            Text('5/5')
                          ])),
                      Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Row(children: [
                            Icon(
                              Icons.money_rounded,
                              size: 35,
                              color: Colors.yellow,
                            ),
                            Text('100'),
                          ])),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(
                              Icons.diamond_rounded,
                              size: 35,
                              color: Colors.red,
                            ),
                            Text('100'),
                          ])),
                    ],
                  )
                ],
              ),
              
              Padding(padding: EdgeInsets.only(top: 30)),
              Column(
                children: [
                  Icon(
                    Icons.gamepad_sharp,
                    size: 150,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Stack(children: [Container(), Context]),
            ])
            ),
            );
            
  }
}