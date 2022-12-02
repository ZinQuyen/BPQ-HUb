import 'package:flutter/material.dart';
import '/model/menu.dart';
import 'Home.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nạp thẻ'),
        leading: IconButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyWidget(title: 'BPQ Hub'),
                  ));
            }),
            icon: Icon(Icons.arrow_back)),
      ),
      drawer: Menu(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 101, 217, 246),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(35)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 101, 217, 246),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Row()],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'XXX-XXX-XXX',
                  ),
                ),
              ),
              ElevatedButton(onPressed: (() {}), child: const Text('Xác nhận'))
            ],
          ),
        ),
      ),
    );
  }
}
