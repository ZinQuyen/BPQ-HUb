import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phan04_baitap1/screens/setting.dart';

class SoundSetting extends StatefulWidget {
  const SoundSetting({super.key});

  @override
  State<SoundSetting> createState() => _SoundSettingState();
}

class _SoundSettingState extends State<SoundSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vinhquyen'),
        leading: ElevatedButton(
          onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: ((context) => SettingScreen())));
        },child: Icon(Icons.arrow_back),),
      ),
      body: Container(

      ),
    );
  }
}