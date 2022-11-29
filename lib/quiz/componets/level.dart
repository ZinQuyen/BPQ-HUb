import 'package:flutter/material.dart';
import 'package:phan04_baitap1/quiz/quiz_screen.dart';
import 'package:phan04_baitap1/screens/Home.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:
              IconButton(onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyWidget(title: 'BPQ Hub'),));
              }), icon: Icon(Icons.arrow_back))),
      body: Column(
        
        children: [
          Text('Chu de : Cong Nghe Thong Tin'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen(),));
                      }), child: Text('De')),
                      ElevatedButton(onPressed: (() {
                        
                      }), child: Text('Trung Binh')),
                      ElevatedButton(onPressed: (() {
                        
                      }), child: Text('Kho')),
                    ],
                  ),
                ),
              )
            ],
            
          )
        ],
      ),
    );
  }
}