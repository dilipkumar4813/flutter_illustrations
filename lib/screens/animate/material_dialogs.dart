import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class MaterialDialogsScreen extends StatefulWidget {
  const MaterialDialogsScreen({super.key});

  @override
  State<MaterialDialogsScreen> createState() => _MaterialDialogsScreenState();
}

class _MaterialDialogsScreenState extends State<MaterialDialogsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Material Dialogs"),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () => showBasicDialog(),
                child: const Text("Basic Dialog"),
              ),
              ElevatedButton(
                onPressed: () => showBottomDialog(),
                child: const Text("Bottom Dialog"),
              ),
            ],
          ),
        ));
  }

  // Function to show a normal dialog
  void showBasicDialog() {
    Dialogs.materialDialog(
      msg: 'Are you sure ? you can\'t undo this',
      title: "Delete",
      color: Colors.white,
      context: context,
      actions: dialogButtons(),
    );
  }

  // Function to show the bottom sheet dialog
  void showBottomDialog() {
    Dialogs.bottomMaterialDialog(
      msg: 'Are you sure? you can\'t undo this action',
      title: 'Delete',
      context: context,
      actions: dialogButtons(),
    );
  }

  List<Widget> dialogButtons() {
    return [
      IconsOutlineButton(
        onPressed: () {},
        text: 'Cancel',
        iconData: Icons.cancel_outlined,
        textStyle: const TextStyle(color: Colors.grey),
        iconColor: Colors.grey,
      ),
      IconsButton(
        onPressed: () {},
        text: 'Delete',
        iconData: Icons.delete,
        color: Colors.red,
        textStyle: const TextStyle(color: Colors.white),
        iconColor: Colors.white,
      ),
    ];
  }
}
