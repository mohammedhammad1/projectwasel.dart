import 'package:flutter/material.dart';
import 'package:waselbaman/creatshipment/createShippingRequest.dart';
import 'package:waselbaman/manageshipments/manageshipments.dart';
import 'package:waselbaman/trchnicalsupport/technicalsupport.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFC7923E),
        automaticallyImplyLeading: false,
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
            const SizedBox(height: 20),
            const Text(
              "Hello, Salem Mohamed zakaria Abdelghani",
              style: TextStyle(
                color: Color(0xFFC7923E),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            const Text(
              "Phone: 0799999999",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Text(
              "Email: smsa@project.com",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Text(
              "Address: Amman",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 30),

            // زر إدارة الشحنات
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShipmentPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7923E),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Manage Shipments"),
            ),

            const SizedBox(height: 10),

            // زر إنشاء شحنة
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateShipmentPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7923E),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Create Shipment Request"),
            ),

            const SizedBox(height: 10),

            // زر الدعم الفني
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SupportPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC7923E),
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Technical Support"),
            ),

            const Spacer(),

            // زر تسجيل الخروج
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
