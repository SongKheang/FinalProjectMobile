import 'package:first_app/pages/productDetail.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart'; // ADD THIS LINE

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    routes: {
      '/home': (context) => const HomePage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foodgo',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
          SizedBox(width: 15),
        ],
        // backgroundColor: Colors.white,
        // centerTitle: true,
        // elevation: 0.0,
        // leading: Container(
        //   margin: const EdgeInsets.all(10),
        //   alignment: Alignment.center,
        //   child: SvgPicture.asset(
        //     'assets/icons/arrow-left-s-line.svg',
        //     height: 20,
        //     width: 20,
        //   ),
        //   decoration: BoxDecoration(
        //     color: const Color(0xffF8F8F8),
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Order your favourite food!', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.filter_list),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterChip(
                  label: const Text('All'), 
                  backgroundColor: Colors.red,
                  labelStyle: const TextStyle(color: Colors.white), 
                  onSelected: (_) 
                  {}),
                FilterChip(label: const Text('Combos'), onSelected: (_) {}),
                FilterChip(label: const Text('Sliders'), onSelected: (_) {}),
                FilterChip(label: const Text('Classics'), onSelected: (_) {}),
              ],
            ),

            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  FoodCard(
                    imageUrl: 'assets/images/image_3.png',
                    title: 'Cheeseburger',
                    subtitle: 'Wendy Burger',
                    rating: 4.9,
                  ),
                  FoodCard(
                    imageUrl: 'assets/images/image_4.png',
                    title: 'Hamburger',
                    subtitle: 'Veggie Burger',
                    rating: 4.8,
                  ),
                  FoodCard(
                    imageUrl: 'assets/images/image_5.png',
                    title: 'Hamburger',
                    subtitle: 'Chicken Burger',
                    rating: 4.6,
                  ),
                  FoodCard(
                    imageUrl: 'assets/images/image_6.png',
                    title: 'Hamburger',
                    subtitle: 'Fried Chicken Burger',
                    rating: 4.5,
                  ),
                  FoodCard(
                    imageUrl: 'assets/images/image_5.png',
                    title: 'Hamburger',
                    subtitle: 'Chicken Burger',
                    rating: 4.6,
                  ),
                  FoodCard(
                    imageUrl: 'assets/images/image_6.png',
                    title: 'Hamburger',
                    subtitle: 'Fried Chicken Burger',
                    rating: 4.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      //   backgroundColor: Colors.red,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double rating;

  const FoodCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Wrap with GestureDetector for tap handling
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails( // Navigate to ProductDetails page
              title: title,
              imageUrl: imageUrl,
              subtitle: subtitle,
              rating: rating,
            ),
          ),
        );
      },
      child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            alignment: Alignment.center,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 80,
              width: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                        Text(rating.toString()),
                      ],
                    ),
                    const Icon(Icons.favorite_border),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        // Navigate to profile page
        break;
      case 2:
        // Handle FAB action
        break;
      case 3:
        // Navigate to chat page
        break;
      case 4:
        // Navigate to favorite page
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home_outlined, 0),
          _buildNavItem(Icons.person_outline, 1),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Center(
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
          _buildNavItem(Icons.chat_bubble_outline, 3),
          _buildNavItem(Icons.favorite_outline, 4),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isSelected ? Colors.orange : Colors.grey),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 4),
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}
