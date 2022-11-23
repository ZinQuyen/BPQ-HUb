import 'package:flutter/material.dart';
import '../login.dart/login_welcome.dart';
import '../login.dart/login_namnu.dart';


void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.red),
    home: const MyHomePage(title: 'Flutter Demo home page'),
  ));
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget Login = Text(
      'Tạo tài khoản',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
    );

    Widget textField(String title) => TextField(
          style: TextStyle(color: Colors.yellow),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              border: OutlineInputBorder(),
              hintText: title,
              hintStyle: TextStyle(color: Colors.grey)),
        );

    Widget textFieldd(String title) => TextField(
          style: TextStyle(color: Colors.yellow),
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
                borderSide: BorderSide(width: 1, color: Colors.grey),
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
      onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginNamNu(
                      title: 'Quay về',
                    )));
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Tiếp tục'),
      ),
    );

    Widget Context = Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(padding: const EdgeInsets.only(top: 20), child: Login)
        ]),
        Container(
          margin: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 210),
                child: Text(
                  'Nhập tài khoản',
                  style: TextStyle(
                    fontSize: 20,
                      fontWeight: FontWeight.bold, color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        textField('Nhập tên đăng nhập'),
        Padding(padding: EdgeInsets.all(10)),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 45),
              child: Text(
                'Mật khẩu 6 số để bảo vệ an toàn',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold, color: Colors.blueAccent),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        textFieldd('Nhập mật khẩu'),
        Padding(padding: EdgeInsets.all(10)),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 170),
              child: Text(
                'Nhập lại mật khẩu',
                style: TextStyle(
                  fontSize: 20,
                    fontWeight: FontWeight.bold, color: Colors.blueAccent),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        textFielddd('Nhập lại mật khẩu'),
        Padding(padding: EdgeInsets.all(10)),
        btn
      ]),
    );
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[400],
        appBar: AppBar(
          backgroundColor: Colors.yellow[600],
          title: Text(widget.title),
        ),
        body: Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/b.png'),
                fit: BoxFit.cover,)),
          child: 
        
        Stack(children: [Container(), Context])));
  }
}
