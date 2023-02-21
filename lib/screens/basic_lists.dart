import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/screens.dart';
import '../models/tlist.dart';

class BasicList extends StatefulWidget {
  const BasicList({super.key});

  @override
  State<BasicList> createState() => _BasicListState();
}

class _BasicListState extends State<BasicList> {
  final List list = [
    TList(title: "Test 1", description: "Basic 1 Description"),
    TList(title: "Test 2", description: "Basic 2 Description")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.abc),
                  title: Text(list[index].title),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            BasicListDetais(tlist: list[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
