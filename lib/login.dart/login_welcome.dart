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
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MyWidget(
                      title: 'BPQ Hub',
                    )));
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Đăng nhập'),
      ),
    );
    Widget dangkii = ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll<Color>(Colors.blueGrey),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MyHomePage(
                      title: 'Đăng ký',
                    )));
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Đăng Kí'),
      ),
    );
    Widget quenMK = ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll<Color>(Colors.blueGrey),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const quenpass(title: 'back')));
      },
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Quên mật khẩu'),
      ),
    );
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/b.png'),
            fit: BoxFit.cover,
          ),
        ),
        // child: Scaffold(
        //   backgroundColor: Colors.transparent,
        //   body: SingleChildScrollView(
        //       child: Container(
        //     child: Column(
        //       Container(
        //     decoration: const BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage('image/b.png'),
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: Container(
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
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
                  margin: const EdgeInsets.only(top: 70),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: text1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hoten('Họ Tên'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
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
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: quenMK,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
    Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 280),
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
          const Padding(padding: EdgeInsets.only(top: 10)),
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
    );
  }
}

Widget Login = const Text(
  'Welcome',
  style:
      TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),
);
Widget text1 = const Text(
  'Tên đăng nhập',
  style: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueAccent),
);
Widget text2 = const Text(
  'Mật khẩu',
  style: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueAccent),
);
Widget dangki = const Text(
  'Đăng ký',
  style: TextStyle(
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
      color: Colors.green),
);
Widget quenmatkhau = const Text(
  'Quên mật khẩu',
  style: TextStyle(
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
      color: Colors.green),
);

Widget Hoten(String title) => TextField(
      style: const TextStyle(color: Colors.yellow),
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          border: const OutlineInputBorder(),
          hintText: title,
          hintStyle: const TextStyle(color: Colors.grey)),
    );
Widget Pass(String title) => TextField(
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          border: const OutlineInputBorder(),
          hintText: title,
          hintStyle: const TextStyle(color: Colors.grey)),
    );
Widget textFielddd(String title) => TextField(
      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          border: const OutlineInputBorder(),
          hintText: title,
          hintStyle: const TextStyle(color: Colors.grey)),
    );
