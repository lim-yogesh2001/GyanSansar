import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../components/profile_tabs_views.dart';

class ProfileScreen extends StatelessWidget {
  final String initialTab;
  const ProfileScreen({ required this.initialTab, super.key});

  @override
  Widget build(BuildContext context) {
    final List following = [
      {
        "id": 1,
        "image":
            'https://images.unsplash.com/photo-1489939078242-0a1dc4a08f06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      },
      {
        "id": 2,
        "image":
            'https://images.unsplash.com/photo-1489939078242-0a1dc4a08f06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      },
      {
        "id": 3,
        "image":
            'https://images.unsplash.com/photo-1489939078242-0a1dc4a08f06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      },
      {
        "id": 4,
        "image":
            'https://images.unsplash.com/photo-1489939078242-0a1dc4a08f06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      }
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _ProfileHeader(),
            Container(
              // color: Colors.red,
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Emma Watson",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: following.map((e) {
                        int i = following.indexOf(e);
                        if (i <= 2) {
                          return CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            backgroundImage: NetworkImage(e['image']),
                          );
                        }
                        return CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          child: Text(
                            '+ ${following.length - 3}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    // margin: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "${following.length} Following ,  ",
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Text(
                          "8 Followers",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Update Profile",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade500,
                    thickness: 0.5,
                  ),
                  ProfileTabsAndViews(initialTab: initialTab,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 220,
        child: Stack(clipBehavior: Clip.none, children: [
          SizedBox.expand(
              child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: const NetworkImage(
                "https://images.unsplash.com/photo-1552699611-e2c208d5d9cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=508&q=80"),
            fit: BoxFit.cover,
          )),
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          Positioned(
            left: 10,
            bottom: -50,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(100.0),
              child: SizedBox(
                  height: 120.0,
                  width: 120.0,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: const NetworkImage(
                        'https://images.unsplash.com/photo-1492175742197-ed20dc5a6bed?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                    fit: BoxFit.cover,
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
