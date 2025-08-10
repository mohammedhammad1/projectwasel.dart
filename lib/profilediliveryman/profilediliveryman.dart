import 'package:flutter/material.dart';
import 'package:waselbaman/creatshipment/createShippingRequest.dart';
import 'package:waselbaman/manageshipments/manageshipments.dart';
import 'package:waselbaman/trchnicalsupport/technicalsupport.dart';

class ProfileDeliveryManPage extends StatelessWidget {
  const ProfileDeliveryManPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFC7923E),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4E342E), // بني غامق
              Color(0xFF866548), // ذهبي
              Color(0xFF3F2A24), // بني غامق أغمق
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
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
                "Hello, Abdelghani Mohamed Salem Zakaria",
                style: TextStyle(
                  color: Color(0xFFC7923E),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                "Phone: 07888888888",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Text(
                "Email: Aaa@project.com",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Text(
                "Address: Alzarqa",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShipmentPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC7923E),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("View Approved Requests"),
              ),

              const SizedBox(height: 10),

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
                child: const Text("View Shipment"),
              ),

              const SizedBox(height: 30),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SupportPage(),
                    ),
                  );
                },
                child: const Text(
                  "Technical Support",
                  style: TextStyle(
                    color: Color(0xFFC7923E),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
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
      ),
    );
  }
}
