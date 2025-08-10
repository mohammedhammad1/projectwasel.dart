import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About Us', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFC7923E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                "https://symlog.eu/wp-content/uploads/2016/04/miedzykontynentalny-transport-droga-ladowa.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'About US',
              style: TextStyle(fontSize: 40, color: Color(0xFFC7923E)),
            ),
            const SizedBox(height: 20),
            const Text(
              'Fast and Reliable Logistics Service Provider',
              style: TextStyle(fontSize: 30, color: Color(0xFFC7923E)),
            ),
            const SizedBox(height: 20),
            const Text(
              'We are a company specialized in shipping and delivery services, striving to provide the best service to our customers in Jordan. Our company was established with the goal of improving the shipping and delivery experience for customers by offering advanced and reliable solutions.',
              style: TextStyle(fontSize: 20, color: Color(0xFFC7923E)),
            ),
            const SizedBox(height: 20),
            const Text(
              'Our Mission:',
              style: TextStyle(fontSize: 30, color: Color(0xFFC7923E)),
            ),
            const SizedBox(height: 10),
            const Text(
              'We aim to provide shipping and delivery services at the highest level of efficiency and accuracy to ensure our customers satisfaction',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Our Vision:',
              style: TextStyle(fontSize: 30, color: Color(0xFFC7923E)),
            ),
            const SizedBox(height: 10),
            const Text(
              'To become the first choice for shipping and delivery services in Jordan through innovation and dedication to providing the best.',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
