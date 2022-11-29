import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:phan04_baitap1/screens/card.dart';
import 'package:phan04_baitap1/screens/history.dart';
import '../login.dart/login_welcome.dart';
import '../screens/Account.dart';
import '../screens/Home.dart';
import '../screens/setting.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('menu')
          ),
        ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Trang chủ'),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyWidget(title: 'BQP Hub',)));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Cài đặt'),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.card_giftcard),
            title: const Text('Nạp thẻ'),
            onTap: () {
               Navigator.of(context).popUntil((route) => route.isFirst);
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) => CardScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Lịch sử đấu'),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HistoryMatch()));
            }
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Thông Tin'),
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Đăng xuất'),
            onTap: () {
              _onBackButtonPressed(context);
            }
          ),
        ],
      ),
    );
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async{
    bool? exitApp = await showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Có phải bạn muốn đăng xuất ?'),
        content: const Text('Bạn có muốn đóng ứng dụng'),
        actions: <Widget>[
          TextButton(onPressed: (() {
            Navigator.of(context).pop(false);
          }), child: const Text('Không')),
          TextButton(onPressed: (() {
            Navigator.of(context).pop(true);
          }), child: const Text('Có')),
        ],
      );

      
    });
    return exitApp ?? false;
  }
}