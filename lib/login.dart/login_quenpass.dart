import 'package:flutter/material.dart';
import 'package:phan04_baitap1/login.dart/login_welcome.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.red),
    home: const quenpass(
      title: '',
    ),
  ));
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const quenpass(title: 'Flutter Demo Home Page'),
  );
}

class quenpass extends StatefulWidget {
  const quenpass({super.key, required this.title});

  final String title;

  @override
  State<quenpass> createState() => _quenpassState();
}

enum Sex { male, female }

class _quenpassState extends State<quenpass> {
  @override
  Widget build(BuildContext context) { 
    Widget Login =
     Text(
      'Đổi mật khẩu',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 40, color: Colors.red),
    );

    Widget Hoten(String title) => TextField(
          style: TextStyle(color: Colors.grey),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              border: OutlineInputBorder(),
              hintText: title,
              hintStyle: TextStyle(color: Colors.grey)),
        );

    Widget Gmail(String title) => TextField(
          style: TextStyle(color: Colors.grey),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              border: OutlineInputBorder(),
              hintText: title,
              hintStyle: TextStyle(color: Colors.grey)),
        );
    Widget textFielddd(String title) => TextField(
          style: TextStyle(color: Colors.yellow),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.redAccent),
              ),
              border: OutlineInputBorder(),
              hintText: title,
              hintStyle: TextStyle(color: Colors.grey)),
        );

    Widget btn = ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(Colors.yellow.withOpacity(0.8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () => {Navigator.of(context).popUntil((route) => route.isFirst),
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginPage(
                      
                    )))},
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Xác nhận'),
      ),
    );

    Widget Context = Container(
      width: MediaQuery.of(context).size.width / 1.1,
    
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(padding: EdgeInsets.only(bottom:160)),
        Login,
        Padding(padding: EdgeInsets.only(top:70)),
        Padding(padding: EdgeInsets.all(20)),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right:20),
              child: Text(
                'Mật khẩu 6 số để bảo vệ an toàn',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Hoten('Nhập mật khẩu'),
        Padding(padding: EdgeInsets.all(10)),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 135),
              child: Text(
                'Xác nhận mật khẩu',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Gmail('Nhập lại mật khẩu'),
        Padding(padding: EdgeInsets.all(10)),
        btn
      ]),
    );
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('image/b.png'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              child: Stack(
                children: [Container(), Context],
              ),
            ),
          ),
        ));

    /* Scaffold(
        backgroundColor: Colors.deepPurpleAccent[400],
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.yellow[600],
        ),
        body: Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/b.png'),
                fit: BoxFit.cover,)),
          child: 
        Stack(children: [Container(), Context])));
  } */
  }
}
