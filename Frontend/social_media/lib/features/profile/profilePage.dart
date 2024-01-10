import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:social_media/features/authentication/widgets/customEleveatedButton.dart';
import 'package:social_media/features/profile/data/models/user_profile.dart';
import 'package:http/http.dart' as http; // Add this line

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosts();
  }

  @override
  Future<UserProfile> getPosts() async {
    final response = await http.get(
      Uri.parse("http://127.0.0.1:8000/profile_lists"),
    );

    if (response.statusCode == 200) {
      print(response.body);
    }
    return UserProfile.fromJson(jsonDecode(response.body));
  }

  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Image.network(
                    'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                    width: double.infinity,
                    height: h / 3,
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    bottom: -40,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2csVHl_EBoGPADSH-4tF2g6NFnhWKDp72MA&usqp=CAU"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 203,
                width: 330,
                child: Column(
                  children: [
                    const Text(
                      'User Name',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'I’d rather regret the things I’ve done than regret the things I haven’t done–Lucille Ball.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 15),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Posts',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 9),
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Followers',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 9),
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'following',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 9),
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 150,
                          child: CustomElevatedButton(
                            text: 'Follow',
                            onPressed: () {},
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 40,
                          width: 150,
                          child: CustomElevatedButton(
                            text: 'Message',
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                children: [
                  Image.network(
                    'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    child: Image.network(
                      'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://www.cnet.com/a/img/resize/e8c3c0361c340d3a6d2c7f012d46d743b4893165/hub/2023/01/17/91eb6502-7246-430f-aa5f-e99f7cdea3ac/rs-2024-chevrolet-corvette-e-ray-3lz-006.jpg?auto=webp&fit=crop&height=810&width=1440',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
