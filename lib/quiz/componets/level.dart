import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phan04_baitap1/quiz/quiz_screen.dart';
import 'package:phan04_baitap1/screens/Home.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Chủ đề'),
            leading: IconButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyWidget(title: 'BPQ Hub'),
                      ));
                }),
                icon: const Icon(Icons.arrow_back))),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ));
  }
}

class Entry {
  final String title;
  final List<Entry> children;
  Entry(this.title, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry(
    'Công Nghệ Thông Tin',
    <Entry>[
      Entry(
        'Level 1',
        <Entry>[
          Entry('question 1'),
          Entry('Question 2'),
          Entry('Question 3'),
        ],
      ),
      Entry('Level 2'),
      Entry('Level 3'),
    ],
  ),
  Entry(
    'Âm Thực',
    <Entry>[
      Entry(
        'Level 1',
        <Entry>[
          Entry('Question 1'),
          Entry('Question 2'),
          Entry('Question 3'),
        ],
      ),
      Entry(
        'Level 2',
        <Entry>[
          Entry('Question 1'),
          Entry('Question 2'),
          Entry('Question 3'),
        ],
      ),
      Entry(
        'Level 3',
        <Entry>[
          Entry('Question 1'),
          Entry('Question 2'),
          Entry('Question 3'),
        ],
      ),
    ],
  ),
  Entry(
    'Động Vật',
    <Entry>[
      Entry(
        'Level 1',
        <Entry>[
          Entry('Question 1'),
          Entry('Question 2'),
          Entry('Question 3'),
        ],
      ),
      Entry('Level 2'),
      Entry('Level 3'),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
        
      );
    }
    return ExpansionTile(
      title: Text(root.title),
      key: PageStorageKey<Entry>(root),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildTiles(entry);
  }
}
