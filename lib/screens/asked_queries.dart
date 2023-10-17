import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gyansansar/widget/custom_dropdown.dart';
import 'package:gyansansar/widget/custom_elevated_button.dart';

const List<String> firstDropDownList = ['Public', 'Follower', 'Only Me'];
const List<String> secondDropDownList = [
  'BEd.IT (Tribhuvan University)',
  'BsC.IT (Tribhuvan University)'
];
const List<String> thirdDropDownList = [
  'VOLUPTATE ODIO AUTEM',
  'ID QUI DOLORES'
];

class AskedQueriesScreen extends StatelessWidget {
  const AskedQueriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask Query"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            AskQueryTips(),
            Container(
              padding: const EdgeInsets.all(5.0),
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 3.0),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.grey.shade400),
              ),
              child: AskQueryForm(),
            )
          ],
        ),
      )),
    );
  }
}

class AskQueryForm extends StatefulWidget {
  const AskQueryForm({
    super.key,
  });

  @override
  State<AskQueryForm> createState() => _AskQueryFormState();
}

class _AskQueryFormState extends State<AskQueryForm> {
  String dropDownValue = firstDropDownList.first;
  String forSecondDropDownValue = secondDropDownList.first;
  String forThirdDropDownvalue = thirdDropDownList.first;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.teal.shade200, width: 1.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/gyansansar_logo.png"),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100,
                      margin: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0, color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: DropdownButton(
                          value: dropDownValue,
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                          borderRadius: BorderRadius.circular(25.0),
                          items: firstDropDownList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              dropDownValue = value!;
                            });
                          }),
                    )
                  ],
                ),
              ),
              Container(
                  child: Row(children: [
                CustomDropDownButton(
                    defaultValue: forSecondDropDownValue,
                    list: secondDropDownList,
                    onChange: (value) {
                      setState(() {
                        forSecondDropDownValue = value;
                      });
                    })
              ]))
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
           Container(
                      height: 40.0,
                      margin: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0, color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: DropdownButton(
                          value: forThirdDropDownvalue,
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                          borderRadius: BorderRadius.circular(25.0),
                          items: thirdDropDownList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              forThirdDropDownvalue = value!;
                            });
                          }),
                    ),
                    const SizedBox(height: 10.0,),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Ask Your Queries...",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5.0), // Add border radius
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5.0), // Add border radius
              ),
            ),
            maxLines: 4,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.teal.shade400.withOpacity(.5))),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.upload,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Upload",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                CustomElevatedButton(
                    btnTitle: 'Reset',
                    titlecolor: Colors.white,
                    onPressed: () {},
                    btnbackground: Colors.grey),
                CustomElevatedButton(
                    btnTitle: 'Post',
                    titlecolor: Colors.white,
                    onPressed: () {},
                    btnbackground: Colors.teal),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AskQueryTips extends StatelessWidget {
  const AskQueryTips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
      decoration: BoxDecoration(
          color: Colors.teal.shade100,
          border: Border.all(width: 2.0, color: Colors.lightBlue.shade100)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tips on getting good answers quickly",
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 255, 100),
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "1. Make sure your question has not been asked already",
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 255, 100),
                fontWeight: FontWeight.normal,
                fontSize: 12.0),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "2. Keep your question short and to the point",
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 255, 100),
                fontWeight: FontWeight.normal,
                fontSize: 12.0),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "2. Double-check grammar and spelling",
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 255, 100),
                fontWeight: FontWeight.normal,
                fontSize: 12.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
