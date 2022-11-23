import 'package:flutter/material.dart';
import '../login.dart/login_welcome.dart';
import '../login.dart/login_namnu.dart';


void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.red),
    home: const LoginNamNu(title: '',),
  ));
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const LoginNamNu(title: 'Flutter Demo Home Page'),
  );
}

class LoginNamNu extends StatefulWidget {
  const LoginNamNu({super.key, required this.title});

  final String title;

  @override
  State<LoginNamNu> createState() => _LoginNamNuState();
}

enum Sex { male, female }

class _LoginNamNuState extends State<LoginNamNu> {
  Sex? _sex = Sex.male;
  @override
  Widget build(BuildContext context) {
    Widget Login = Text(
      'Nhập thông tin',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.redAccent ),
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
      onPressed: () => {
        Navigator.of(context).popUntil((route) => route.isFirst),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())),
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Xác nhận'),
      ),
    );

    Widget Context = Container(
      
      width: MediaQuery.of(context).size.width / 1.1,
      height: 700,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Login,
        Padding(padding: EdgeInsets.all(20)),
        Text(
          'Thông tin này dùng để xác thực và bảo vệ tài khoản của bạn tốt hơn',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.blueAccent),
        ),
        Padding(padding: EdgeInsets.all(20)),
        Row(children: [
          Expanded(
            child: RadioListTile<Sex>(
                title: const Text('Nam',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                value: Sex.female,
                groupValue: _sex,
                onChanged: (Sex? value) {
                  setState(() {
                    _sex = value;
                  });
                }),
          ),
          Expanded(
            child: RadioListTile<Sex>(
                title: const Text('Nữ',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                value: Sex.male,
                groupValue: _sex,
                onChanged: (Sex? value) {
                  setState(() {
                    _sex = value;
                  });
                }),
          )
        ]),
                Padding(padding: EdgeInsets.all(10)),

        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Nhập họ tên',
                style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20, color: Colors.blueAccent),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Hoten('Họ tên'),
        Padding(padding: EdgeInsets.all(10)),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Nhập Gmail',
                style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 20, color: Colors.blueAccent ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Gmail('Gmail'),
        Padding(padding: EdgeInsets.all(10)),
        btn
      ]),
    );
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[400],
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.yellow[600],
        ),
        body:Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/b.png'),
                fit: BoxFit.cover,)),
          child: 
        
         Stack(children: [Container(), Context])));
  }
}
