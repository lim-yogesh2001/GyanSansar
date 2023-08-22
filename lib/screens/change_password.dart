import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60.0,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                fit: BoxFit.contain,
                image: const AssetImage('assets/gyansansar_title.jpg'),
              ),
            ),
            const _ChangePasswordForm()
          ],
        ),
      ),
    );
  }
}

class _ChangePasswordForm extends StatefulWidget {
  const _ChangePasswordForm({super.key});

  @override
  State<_ChangePasswordForm> createState() => __ChangePasswordFormState();
}

class __ChangePasswordFormState extends State<_ChangePasswordForm> {
  final _formkey = GlobalKey<FormState>();
  final _newPwController = TextEditingController();
  final _confirmPwController = TextEditingController();

  void _submitForm() {
    if (_formkey.currentState!.validate()) {
      print("pressed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              child: const Column(
                children: [
                  Text(
                    "Change Password",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Enter the required field below:",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 2.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: InputBorder.none,
                        labelText: "Old Password",
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Do not Leave The TextField Empty.";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 2.0),
                    child: TextFormField(
                      controller: _newPwController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: InputBorder.none,
                        labelText: "New Password",
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Do not Leave The TextField Empty.";
                        }
                        if (value.length <= 6) {
                          return "Your password should contain more than 6 characters";
                        }
                        if (_newPwController.text !=
                            _confirmPwController.text) {
                          return "Please confirm your new password and confirm password";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 2.0),
                    child: TextFormField(
                      controller: _confirmPwController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: InputBorder.none,
                        labelText: "Confirm Password",
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Do not Leave The TextField Empty.";
                        }
                        if (value.length <= 6) {
                          return "Your password should contain more than 6 characters";
                        }
                        if (_newPwController.text !=
                            _confirmPwController.text) {
                          return "Please confirm your new password and confirm password";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 45,
                    margin: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 5.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.teal)),
                      onPressed: _submitForm,
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
