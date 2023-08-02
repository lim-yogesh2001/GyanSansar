import 'package:flutter/material.dart';
import '../components/profile_custom_title.dart';
import '../components/circular_follow_avatar.dart';

class SettingsProfileView extends StatelessWidget {
  const SettingsProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact Info",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.teal,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CustomRichText(
                    title: "Phone",
                    text: "9804356052",
                  ),
                  _CustomRichText(
                    title: "Email",
                    text: "emma@gmail.com",
                  ),
                  _CustomRichText(
                    title: "Website",
                    text: "",
                  ),
                  _CustomRichText(
                    title: "Facebook",
                    text: "",
                  ),
                  _CustomRichText(
                    title: "Instagram",
                    text: "",
                  ),
                  _CustomRichText(
                    title: "LinkedIn",
                    text: "",
                  ),
                  _CustomRichText(
                    title: "Youtube",
                    text: "",
                  )
                ],
              ),
            ),
            const Text(
              "Basic Info",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.teal,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CustomRichText(title: "Gender", text: "Female"),
                  _CustomRichText(title: "Date of Birth", text: "1999-02-01"),
                  _CustomRichText(
                      title: "Address", text: "Dharan, Everestline"),
                ],
              ),
            ),
            ProfileCustomTitle(
              title: "Life Events",
              btnText: "Add",
              onPressed: () {},
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Studied in Canada",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "2018-02-11 to 2022-11-27",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 16.0,
                        color: Colors.blue,
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 16.0,
                        color: Colors.red,
                        icon: const Icon(Icons.delete),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ProfileCustomTitle(
                title: "Following", btnText: "See All", onPressed: () {}),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (ctx, i) => CircleFollowAvatar(),
              ),
            ),
            ProfileCustomTitle(
                title: "Followers", btnText: "See All", onPressed: () {}),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (ctx, i) => CircleFollowAvatar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomRichText extends StatelessWidget {
  final String title;
  final String text;
  const _CustomRichText({
    required this.title,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: "$title : ",
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black87,
            fontSize: 16.0,
          ),
          children: [
            TextSpan(
              text: " $text",
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black87,
                fontSize: 14.0,
              ),
            )
          ],
        ),
      ])),
    );
  }
}
