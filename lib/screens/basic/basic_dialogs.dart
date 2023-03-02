import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/app_strings.dart';
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
        title: Text(AppStrings.dialogScreen),
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
                      return AlertDialog(
                        title: Text(AppStrings.dialogTitle),
                        content: Text(AppStrings.dialogDescription),
                      );
                    },
                  );
                },
                child: const Text("Dialog"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(AppStrings.dialogTitle),
                        content: Text(AppStrings.dialogDescription),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(AppStrings.action),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(AppStrings.snackbarInfo),
                    ),
                  );
                },
                child: Text(AppStrings.snackbar),
              ),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: AppStrings.toast,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    fontSize: 18.0,
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                  );
                },
                child: Text(AppStrings.toast),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
