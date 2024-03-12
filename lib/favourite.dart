import 'package:flutter/material.dart';
import 'package:monsoonapp/imagecontainer.dart';
import 'package:monsoonapp/profile.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:GestureDetector(
          onTap: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
          },
          child: const Text(
            'My Favourites ',
            style: TextStyle(
              color: Color(0xFF480460),
              fontSize: 15,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
              letterSpacing: 0.75,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: const Column(
        children: [
          Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                ImageContainer(
                  imagePath: "assets/images/edgeplace.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imagePath: "assets/images/middleplace.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imagePath: "assets/images/edgeplace.png",
                ),
                SizedBox(
                  width: 18,
                ),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                ImageContainer(
                  imagePath: "assets/images/edgeplace.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imagePath: "assets/images/middleplace.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imagePath: "assets/images/edgeplace.png",
                ),
                SizedBox(
                  width: 18,
                ),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                ImageContainer(
                  imagePath: "assets/images/edgeplace.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imagePath: "assets/images/middleplace.png",
                ),
                SizedBox(
                  width: 10,
                ),
                ImageContainer(
                  imagePath: "assets/images/edgeplace.png",
                ),
                SizedBox(
                  width: 18,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
