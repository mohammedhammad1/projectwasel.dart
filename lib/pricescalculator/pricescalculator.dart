import 'package:flutter/material.dart';

class PriceCalculatorPage extends StatefulWidget {
  const PriceCalculatorPage({super.key});

  @override
  State<PriceCalculatorPage> createState() => _PriceCalculatorPageState();
}

class _PriceCalculatorPageState extends State<PriceCalculatorPage> {
  String? selectedPickup;
  String? selectedGovernorate;
  String? selectedUnit;
  final weightController = TextEditingController();

  final pickupLocations = [
    "Aqaba Port",
    "King Hussein Bridge",
    "Jaber Crossing",
    "Al-Omari Crossing",
    "Al-Ruwaished Crossing",
    "Queen Alia International Airport",
  ];

  final governorates = [
    "Amman",
    "Irbid",
    "Zarqa",
    "Balqa",
    "Mafraq",
    "Madaba",
    "Jerash",
    "Ajloun",
    "Karak",
    "Tafilah",
    "Ma'an",
    "Aqaba",
  ];

  final units = ["Kilogram", "Ton"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Price Calculator"),
        backgroundColor: const Color(0xFFC7923E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pickup Location",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField<String>(
                value: selectedPickup,
                hint: const Text("Select pickup location"),
                items:
                    pickupLocations.map((location) {
                      return DropdownMenuItem(
                        value: location,
                        child: Text(location),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedPickup = value;
                  });
                },
              ),
              const SizedBox(height: 20),

              const Text(
                "Destination Governorate",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField<String>(
                value: selectedGovernorate,
                hint: const Text("Select governorate"),
                items:
                    governorates.map((gov) {
                      return DropdownMenuItem(value: gov, child: Text(gov));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedGovernorate = value;
                  });
                },
              ),
              const SizedBox(height: 20),

              const Text(
                "Weight Unit",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField<String>(
                value: selectedUnit,
                hint: const Text("Select unit"),
                items:
                    units.map((unit) {
                      return DropdownMenuItem(value: unit, child: Text(unit));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedUnit = value;
                  });
                },
              ),
              const SizedBox(height: 20),

              const Text(
                "Weight Value",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: weightController,
                decoration: const InputDecoration(
                  hintText: "Enter weight",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Later: Send data to backend for calculation
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Pickup: $selectedPickup\nDestination: $selectedGovernorate\nUnit: $selectedUnit\nWeight: ${weightController.text}",
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC7923E),
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Text(
                    "Calculate Price",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
