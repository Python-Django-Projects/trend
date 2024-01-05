import 'package:flutter/material.dart';
import 'package:social_media/features/authentication/widgets/customEleveatedButton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'I’d rather regret the things I’ve done than regret the things I haven’t done–Lucille Ball.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
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
                      Spacer(),
                      SizedBox(
                          height: 40,
                          width: 150,
                          child: CustomElevatedButton(
                            text: 'Message',
                            onPressed: () {},
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
