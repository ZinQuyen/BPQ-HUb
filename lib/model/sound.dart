import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:phan04_baitap1/screens/setting.dart';

class SoundSetting extends StatefulWidget {
  const SoundSetting({super.key});

  @override
  State<SoundSetting> createState() => _SoundSettingState();
}

class _SoundSettingState extends State<SoundSetting> {
  bool val1 = true;
  bool val2 = false;
  bool val3 = false;

  onChangeFunction1(bool newVal1) {
    setState(() {
      val1 = newVal1;
    });
  }

  onChangeFunction2(bool newVal2) {
    setState(() {
      val2 = newVal2;
    });
  }
  onChangeFunction3(bool newVal3) {
    setState(() {
      val3 = newVal3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cài đặt chung'),
          leading: IconButton(
            onPressed: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            }),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: EdgeInsets.only(top: 15),
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 101, 217, 246),
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(35)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customSwitch('Âm nhạc', val1, onChangeFunction1),
                customSwitch('Âm thanh', val2, onChangeFunction2),
                customSwitch('Thông báo', val3, onChangeFunction3),

                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Sound',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
          Spacer(),
          CupertinoSwitch(
            trackColor: Colors.grey,
            activeColor: Colors.blue,
            onChanged: (value) {
              onChangeMethod(value);
            },
            value: val,
          ),
        ],
      ),
    );
  }
}
