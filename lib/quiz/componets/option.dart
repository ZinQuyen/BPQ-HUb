import 'package:flutter/material.dart';
class Option extends StatelessWidget {
  const Option({
    Key? key, required this.text, required this.index, required this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${index + 1 } $text ',
              style: TextStyle(color: Colors.grey , fontSize: 16),
            ),
            Container(
              height: 26,width: 26,
              decoration:  BoxDecoration(border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(50)),
            )
          ],
        ),
      ),
    );
  }
}