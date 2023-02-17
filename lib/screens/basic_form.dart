import 'package:flutter/material.dart';

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
    // TODO: implement dispose
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
        title: Text("Form build"),
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
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your full name',
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Name cannot be empty");
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter your phone number',
                      labelText: 'Phone number',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Phone number cannot be empty");
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    onSaved: (newValue) {
                      emailAddress = newValue ?? "";
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter your email address',
                      labelText: 'Email Address',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Email address cannot be empty");
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
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
