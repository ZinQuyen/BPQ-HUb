import 'package:flutter/material.dart';
import '../login.dart/login_dangki.dart';
import '../main.dart';
import '../screens/Home.dart';
import '../screens/Shop.dart';
import '../login.dart/login_quenpass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget btn = ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(Colors.yellow.withOpacity(0.8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () {
        /*  Navigator.of(context).popUntil((route) => route.isFirst);
    Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginNamNu(title: 'back',) )); */
          Navigator.of(context).popUntil((route) => route.isFirst);
          Navigator.push(context, MaterialPageRoute(builder:(context)=>MyWidget(title: 'BPQ Hub',) ));
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Đăng nhập'),
      ),
    );
    Widget dangkii = ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(Colors.blueGrey),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(title: 'Đăng ký',)));
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Đăng Kí'),
      ),
    );
    Widget quenMK = ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(Colors.blueGrey),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => quenpass(title: 'back')));
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Quên mật khẩu'),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[400],
      body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/b.png'),
                fit: BoxFit.cover,
              ),
            ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Login,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 300),
                    child: text1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hoten('Họ Tên'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 330),
                    child: text2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Pass('Mật Khẩu'),
                  ),
                  btn,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: dangkii,
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: quenMK,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget Login = Text(
  'Welcome',
  style:
      TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
);
Widget text1 = Text(
  'Tên đăng nhập',
  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
);
Widget text2 = Text(
  'Mật khẩu',
  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
);
Widget dangki = Text(
  'Đăng ký',
  style: TextStyle(
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
      color: Colors.green),
);
Widget quenmatkhau = Text(
  'Quên mật khẩu',
  style: TextStyle(
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
      color: Colors.green),
);

Widget Hoten(String title) => TextField(
      style: TextStyle(color: Colors.yellow),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          border: OutlineInputBorder(),
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey)),
    );
Widget Pass(String title) => TextField(
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
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          border: OutlineInputBorder(),
          hintText: title,
          hintStyle: TextStyle(color: Colors.grey)),
    );