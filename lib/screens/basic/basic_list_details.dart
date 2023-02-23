import 'package:flutter/material.dart';
import '../../models/tlist.dart';

class BasicListDetais extends StatefulWidget {
  const BasicListDetais({super.key, required this.tlist});

  final TList tlist;

  @override
  State<BasicListDetais> createState() => _BasicListDetaisState();
}

class _BasicListDetaisState extends State<BasicListDetais> {
  @override
  Widget build(BuildContext context) {
    widget.tlist.title;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.tlist.title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.tlist.description,
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
