
import 'package:flutter/material.dart';

import '../model/menu.dart';
import 'Home.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tài khoản'),
        leading: IconButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => MyWidget(
                            title: 'BPQ Hub',
                          ))));
            }),
            icon: Icon(Icons.arrow_back)),
      ),
      drawer: const Menu(),
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
                Padding(padding: EdgeInsets.only(top: 100)),
                Text(
                  'Thông tin',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold , color: Colors.amberAccent),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  'Tên ID: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  'Lưu Vinh Quyền',
                  style: TextStyle(fontSize: 17,color: Colors.amberAccent),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  'Giới tính: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  'Nam',
                  style: TextStyle(fontSize: 17,color: Colors.amberAccent),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  'Ngày sinh: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  '04/01/2002',
                  style: TextStyle(fontSize: 17,color: Colors.amberAccent),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  'Email: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  'luuvinhquyen2k2@gmail.com',
                  style: TextStyle(fontSize: 17,color: Colors.amberAccent),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
