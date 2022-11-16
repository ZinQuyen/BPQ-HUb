


import 'package:phan04_baitap1/model/sound.dart';

import '../model/menu.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cài đặt'),
        leading: IconButton(
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyWidget(title: 'BPQ Hub'),));
          }) ,
          
          icon: Icon(Icons.arrow_back)),
      ),
      drawer: const Menu(),
      body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/b.png'),
                fit: BoxFit.fill,
              ),
            ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blueAccent)),
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => SoundSetting()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text('Âm thanh',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blueAccent)),
                    onPressed: () {},
                    child: Text('Liên kết',style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blueAccent)),
                    onPressed: () {},
                    child: Text('Hỗ trợ',style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
