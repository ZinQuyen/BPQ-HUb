import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:phan04_baitap1/model/menu.dart';
import 'package:phan04_baitap1/screens/Home.dart';

class HistoryMatch extends StatefulWidget {
  const HistoryMatch({super.key});

  @override
  State<HistoryMatch> createState() => _HistoryMatchState();
}

class _HistoryMatchState extends State<HistoryMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cài đặt'),
        leading: IconButton(
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyWidget(title: 'BPQ Hub'),));
          }) ,
          
          icon: Icon(Icons.history)),
      ),
      drawer: const Menu(),
      body: const Text('trang lich sử đấu')
    );
  }
}