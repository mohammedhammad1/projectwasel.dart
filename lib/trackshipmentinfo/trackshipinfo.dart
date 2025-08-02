import 'package:flutter/material.dart';

class TrackShipmentInfoPage extends StatelessWidget {
  const TrackShipmentInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Shipment Info",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFC7923E),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.postimg.cc/Hx2F7RHq/Chat-GPT-Image-Jul-22-2025-03-09-02-PM.png",
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                "Shipment Details",
                style: TextStyle(
                  color: Color(0xFFC7923E),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            buildInfoText("Order Number", "SHP2565365"),
            buildInfoText("Client Name", "Mohammad Hammad"),
            buildInfoText("Governorate", "Zarqa"),
            buildInfoText("Address", "Hay Al-Hussein"),
            buildInfoText("Shipment Manager", "Salem"),
            buildInfoText("Manager Phone", "0798888888"),
            buildInfoText("Manager Address", "Aqaba Port"),
            buildInfoText("Delivery Agent", "Zakaria"),
            buildInfoText("Agent Phone", "0797777777"),
            buildInfoText("Status", "Delivered"),
            buildInfoText("Sent Date", "24-7-2025 . 7:35:04 PM"),
            buildInfoText("Weight", "10 Tons"),
            buildInfoText("Price", "110 JD"),
          ],
        ),
      ),
    );
  }

  static Widget buildInfoText(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "$title:",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
