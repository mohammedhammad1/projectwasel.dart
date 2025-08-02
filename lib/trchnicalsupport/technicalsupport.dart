import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Technical Support',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFC7923E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Need help?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC7923E),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'If you have any issues or questions, please contact our support team via:',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'Phone: ‪+962 79 123 4567‬',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Email: support@gmail.com',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
