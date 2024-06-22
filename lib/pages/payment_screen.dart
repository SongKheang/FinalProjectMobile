import 'package:flutter/material.dart';
import 'success_popup.dart'; // Import the new success popup

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OrderSummary(),
            const SizedBox(height: 20),
            const Text(
              'Payment methods',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            const PaymentMethodCard(
              isSelected: true,
              cardNetwork: 'mastercard',
              cardType: 'Credit card',
              cardNumber: '5105 **** **** 0505',
            ),
            const PaymentMethodCard(
              isSelected: false,
              cardNetwork: 'visa',
              cardType: 'Debit card',
              cardNumber: '3566 **** **** 0505',
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  // activeColor: const Color(0xffEF2A39),
                  value: true,
                  onChanged: (value) {},
                ),
                const Text('Save card details for future payments'),
              ],
            ),
            const Spacer(),
            const TotalPriceSection(),
          ],
        ),
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order summary',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order'),
            Text('\$16.48'),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Taxes'),
            Text('\$0.30'),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delivery fees'),
            Text('\$1.50'),
          ],
        ),
        SizedBox(height: 16),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '\$18.19',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text('Estimated delivery time: 15 - 30mins'),
      ],
    );
  }
}

class PaymentMethodCard extends StatelessWidget {
  final bool isSelected;
  final String cardNetwork;
  final String cardType;
  final String cardNumber;

  const PaymentMethodCard({
    super.key,
    required this.isSelected,
    required this.cardNetwork,
    required this.cardType,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:
            isSelected ? const Color.fromARGB(255, 60, 47, 47) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isSelected ? Colors.grey : Colors.grey[300]!,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'lib/assets/$cardNetwork.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardType,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  cardNumber,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Icon(
            isSelected
                ? Icons.radio_button_checked
                : Icons.radio_button_unchecked,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total price',
                  style: TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$18.19',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const SuccessPopup();
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(120, 50), // Adjust width as needed
                backgroundColor: const Color(0xff3C2F2F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Pay Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
