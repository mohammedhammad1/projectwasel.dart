import 'package:flutter/material.dart';

class Adminprofile extends StatelessWidget {
  const Adminprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Admin", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFC7923E),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                "https://i.postimg.cc/Hx2F7RHq/Chat-GPT-Image-Jul-22-2025-03-09-02-PM.png",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const ApproveRequestsPage()),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7923E),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Approve Requests"),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ChangePasswordPage(),
                //   ),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7923E),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("ChangePassword"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ApproveShipmentPage(),
                //   ),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7923E),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Approve Shipment"),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7923E),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
