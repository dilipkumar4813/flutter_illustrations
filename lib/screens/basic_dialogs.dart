import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BasicDialogs extends StatelessWidget {
  const BasicDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Alert Dialog"),
                        content: Text("Dialog Content"),
                      );
                    });
              },
              child: Text("Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Alert Dialog"),
                        content: Text("Dialog Content"),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    });
              },
              child: Text("Action"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("This is a snack bar"),
                  ),
                );
              },
              child: Text("Snack bar"),
            ),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Hello Toast man",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  fontSize: 18.0,
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                );
              },
              child: Text("Toast"),
            ),
          ],
        ),
      ),
    );
  }
}
