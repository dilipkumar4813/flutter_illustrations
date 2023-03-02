import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/app_strings.dart';

class BasicForm extends StatefulWidget {
  const BasicForm({super.key});

  @override
  State<BasicForm> createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  String emailAddress = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(_printNameValue);
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void _printNameValue() {
    print("Name value is ${nameController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(AppStrings.formTitle),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: AppStrings.nameHint,
                      labelText: AppStrings.nameLabel,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.nameError;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: AppStrings.phoneHint,
                      labelText: AppStrings.phoneLabel,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.phoneError;
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    onSaved: (newValue) {
                      emailAddress = newValue ?? "";
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: AppStrings.emailHint,
                      labelText: AppStrings.emailLabel,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.emailError;
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print("Test $emailAddress");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Form validated $emailAddress"),
                    ),
                  );
                }
              },
              child: Text(AppStrings.submit),
            ),
          ],
        ),
      ),
    );
  }
}
