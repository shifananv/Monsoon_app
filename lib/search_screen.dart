import 'package:flutter/material.dart';
import 'package:monsoonapp/favourite.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavouriteScreen()),
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
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search here...',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.60,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              'Recent Searches ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.60,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Image.asset('assets/images/clock.png'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Taj Avante Mumbai   ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.60,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Image.asset('assets/images/clock.png'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Taj Avante Mumbai   ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.60,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Image.asset('assets/images/clock.png'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Taj Avante Mumbai   ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.60,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(left: 260),
            child: Text(
              'Clear Recent Searches ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 9,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                height: 0,
                letterSpacing: 0.45,
              ),
            ),
          )
        ],
      ),
    );
  }
}
