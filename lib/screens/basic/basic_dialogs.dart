import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BasicDialogs extends StatelessWidget {
  const BasicDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Basic Dialogs"),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          title: Text("Alert Dialog"),
                          content: Text("Dialog Content"),
                        );
                      });
                },
                child: const Text("Dialog"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Alert Dialog"),
                          content: const Text("Dialog Content"),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Close"),
                            ),
                          ],
                        );
                      });
                },
                child: const Text("Action"),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("This is a snack bar"),
                    ),
                  );
                },
                child: const Text("Snack bar"),
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
                child: const Text("Toast"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
