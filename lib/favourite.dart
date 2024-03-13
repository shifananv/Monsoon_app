import 'package:flutter/material.dart';
import 'package:monsoonapp/homepage.dart';
import 'package:monsoonapp/imagecontainer.dart';
import 'package:monsoonapp/profile.dart';
import 'package:monsoonapp/search_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
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
      body: Column(
        mainAxisSize: MainAxisSize.max, // Ensure the Column takes full height
        children: [
          const Expanded(
            child: Column(
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
                SizedBox(
                  height: 40,
                ),
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
                SizedBox(
                  height: 40,
                ),
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
          ),
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Image.asset('assets/images/home.png')),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchScreen()),
                      );
                    },
                    child: Image.asset('assets/images/search.png')),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavouriteScreen()),
                      );
                    },
                    child: Image.asset('assets/images/love.png')),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()),
                      );
                    },
                    child: Image.asset('assets/images/profile.png')),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
