import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            backgroundImage: NetworkImage('https://placehold.co/50x50'),
          ),
          SizedBox(width: 10),
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
                FilterChip(label: const Text('All'), onSelected: (_) {}),
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
                    imageUrl: 'https://placehold.co/100x100',
                    title: 'Cheeseburger',
                    subtitle: 'Wendy\'s Burger',
                    rating: 4.9,
                  ),
                  FoodCard(
                    imageUrl: 'https://placehold.co/100x100',
                    title: 'Hamburger',
                    subtitle: 'Veggie Burger',
                    rating: 4.8,
                  ),
                  FoodCard(
                    imageUrl: 'https://placehold.co/100x100',
                    title: 'Hamburger',
                    subtitle: 'Chicken Burger',
                    rating: 4.6,
                  ),
                  FoodCard(
                    imageUrl: 'https://placehold.co/100x100',
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
      //   // child: const Icon(Icons.add),
      //   // backgroundColor: Colors.red,
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
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
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
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      color: Colors.orange,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {}, // router
            icon: const Icon(Icons.home_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_outline),
          ),
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
              child: Icon(Icons.add, size: 30, color: Colors.white),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}