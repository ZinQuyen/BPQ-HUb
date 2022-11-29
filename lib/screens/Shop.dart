import 'package:flutter/material.dart';

import '../model/menu.dart';
import 'Home.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cửa hàng Item'),
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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(5),
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),
                Image(
                  image: AssetImage(
                    'image/sword.png',
                  ),
                  height: 95,
                ),
                Text('Kiếm thần thánh'),
                // Text('100'),
                ElevatedButton(onPressed: (() {}), child: const Text('Mua'))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),
                Image(
                  image: AssetImage(
                    'image/thunder.png',
                  ),
                  height: 95,
                ),
                Text('Năng lượng'),
                // Text('100'),
                ElevatedButton(onPressed: (() {}), child: const Text('Mua'))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),
                Image(
                  image: AssetImage(
                    'image/shield.png',
                  ),
                  height: 95,
                ),
                Text('Khiên thái dương'),
                // Text('100'),
                ElevatedButton(onPressed: (() {}), child: const Text('Mua'))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),
                Image(
                  image: AssetImage(
                    'image/dm.png',
                  ),
                  height: 95,
                ),
                Text('Kim cương'),
                // Text('100'),
                ElevatedButton(onPressed: (() {}), child: const Text('Mua'))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),
                Image(
                  image: AssetImage(
                    'image/hint.png',
                  ),
                  height: 95,
                ),
                Text('Vật phẩm gợi ý'),
                // Text('100'),
                ElevatedButton(onPressed: (() {}), child: const Text('Mua'))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.teal[100],
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),
                Image(
                  image: AssetImage(
                    'image/thedoiten.jpg',
                  ),
                  height: 95,
                ),
                Text('Thẻ đổi tên'),
                // Text('100'),
                ElevatedButton(onPressed: (() {}), child: const Text('Mua'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}