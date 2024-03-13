import 'package:flutter/material.dart';
import 'package:monsoonapp/favourite.dart';
import 'package:monsoonapp/imagecontainer.dart';
import 'package:monsoonapp/profile.dart';
import 'package:monsoonapp/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                );
              },
              child: Container(
                width: 380,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 26),
                  child: Text(
                    'Search here...',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.60,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
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
            const SizedBox(
              height: 40,
            ),
            const Row(
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
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 380,
              height: 138,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/sale.png"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 380,
              height: 54,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Opacity(
                opacity: 0.30,
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 23),
                  child: Text(
                    'Advt. Banner here..!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: 0.75,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
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
            const SizedBox(
              height: 40,
            ),
            const Row(
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
            const SizedBox(
              height: 40,
            ),
            const Row(
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
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
