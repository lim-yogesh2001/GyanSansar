import 'package:flutter/material.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Email"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 60,
            child: Image.asset(
              'assets/gyansansar_title.jpg',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Card(
              margin: const EdgeInsets.all(10.0),
              clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    const Text(
                      "CHANGE EMAIL",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Enter the required field below:",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    const _ChangeEmailForm()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ChangeEmailForm extends StatefulWidget {
  const _ChangeEmailForm({
    super.key,
  });

  @override
  State<_ChangeEmailForm> createState() => _ChangeEmailFormState();
}

class _ChangeEmailFormState extends State<_ChangeEmailForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  border: InputBorder.none,
                  labelText: "Old Email Address",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              margin:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.teal)),
                onPressed: () {},
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
