import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double rating;

  const ProductDetails({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

            alignment: Alignment.center,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 350,
              width: 350,
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      const Icon(Icons.star),
                      Text(' $rating - 26 mins'),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'The $title is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it\'s topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Spicy'),
                      Text('Portion'),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Slider(
                        value: 0.5,
                        onChanged: (value) {},
                        min: 0.0,
                        max: 1.0,
                        divisions: 10,
                        label: 'Mild',
                        activeColor: Colors.red,
                        inactiveColor: Colors.grey,
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          const Text('2'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),

                        child: const Text(
                          '\$8.24',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3C2F2F),
                          fixedSize: const Size.fromHeight(60.0), // Set height here // Background color
                        ),
                        child: const Text(
                          'ORDER NOW',
                          style: TextStyle(
                            fontSize: 20.0,
                            //height: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
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


