import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
          
          ],
        ),
      ),
    );
  }
}