// ignore_for_file: deprecated_member_use

import 'package:finalproject/user_profile.dart';
import 'package:flutter/material.dart';

class FrontPageScreen extends StatefulWidget {
  const FrontPageScreen({super.key});

  @override
  State<FrontPageScreen> createState() => _FrontPageScreenState();
}

class _FrontPageScreenState extends State<FrontPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFF939B),
                  Color(0xFFEF2A39),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'FoodGo',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lobster',
                    color: Colors.white, // Set text color to white
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  style: ButtonStyle(
                    // Button Size(width, height)
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size(130, 50),
                    ),

                    // Padding
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                    ),

                    // Background color
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFFEF2A39).withOpacity(0.8);
                        } else {
                          return const Color(0xFFEF2A39);
                        }
                      },
                    ),

                    // Border
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(color: Colors.transparent),
                      ),
                    ),

                    // Shadow
                    shadowColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.black.withOpacity(1);
                        } else {
                          return Colors.black.withOpacity(0.8);
                        }
                      },
                    ),

                    // Elevate the shadow depth
                    elevation: MaterialStateProperty.all<double>(5.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserProfileScreen()),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: 168,
              height: 200,
              child: Image.asset(
                'images/frontpage-1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 100,
            child: SizedBox(
              width: 168,
              height: 140,
              child: Image.asset(
                'images/frontpage-2.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
