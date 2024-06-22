import 'package:flutter/material.dart';
import 'package:finalproject/front_page.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient covering the entire screen
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEF2A39), // Start color
                  Color(0xFFFF939B), // End color
                ],
                begin: Alignment.topCenter,
                end: Alignment(0.0, -0.3), // Middle center
              ),
            ),
          ),

          // left-side user-profile
          Positioned(
            top: 25,
            right: 0,
            child: Opacity(
              opacity: 0.2,
              child: SizedBox(
                width: 100,
                height: 200,
                child: Image.asset(
                  'images/user-profile-left.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          // right-side user-profile
          Positioned(
            top: 25,
            left: 0,
            child: Opacity(
              opacity: 0.2,
              child: SizedBox(
                width: 100,
                height: 200,
                child: Image.asset(
                  'images/user-profile-right.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          // AppBar
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 130.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle back button tap
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25.0, top: 45.0),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 25.0, top: 45.0),
                            child: GestureDetector(
                              onTap: () {
                                // Handle settings button tap
                              },
                              child: const Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                // Content section below the AppBar
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          initialValue: "Lyhab RITHYNY",
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: const TextStyle(color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          initialValue: "Lyhabrithyny@gmail.com",
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: const TextStyle(color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          initialValue: "Institute of Technology of Cambodia",
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Delivery Address",
                            labelStyle: const TextStyle(color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          initialValue: "*********",
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Color(0xFFD3D3D3),
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Center(
                          child: SizedBox(
                            width: 280,
                            child: Divider(
                              color: Color.fromARGB(255, 211, 211, 211),
                              thickness: 1.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 23.0),
                              child: Text(
                                'Payment Details',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle back button tap
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(right: 19.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 23.0),
                              child: Text(
                                'Order History',
                                style: TextStyle(
                                  fontSize:
                                      18.0, // Adjust the font size as needed
                                  fontWeight: FontWeight
                                      .bold, // Optional: make the text bold
                                  color: Colors.grey, // Set text color to gray
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Handle back button tap
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        19.0), // Adjust the padding as needed
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey, // Set icon color to gray
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MouseRegion(
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle Edit Profile button tap
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 15.0),
                                  backgroundColor: const Color(0xFF3C2F2F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            MouseRegion(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const FrontPageScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 15.0),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(
                                      color: Color(0xFFEF2A39),
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Log Out',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xFFEF2A39),
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    Icon(
                                      Icons.logout,
                                      color: Color(0xFFEF2A39),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 69,
            left: 121,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: const Color(0xFFEF2A39),
                  width: 3.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFEF2A39).withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'images/profile-picture.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
