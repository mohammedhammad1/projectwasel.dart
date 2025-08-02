import 'package:flutter/material.dart';

class Shipment {
  final String id;
  final String name;
  final String phone;
  final int itemsCount;
  final String courier;
  final String deliveryMan;
  final String status;
  final String date;
  final double cost;

  Shipment({
    required this.id,
    required this.name,
    required this.phone,
    required this.itemsCount,
    required this.courier,
    required this.deliveryMan,
    required this.status,
    required this.date,
    required this.cost,
  });

  Shipment copyWith({
    String? id,
    String? name,
    String? phone,
    int? itemsCount,
    String? courier,
    String? deliveryMan,
    String? status,
    String? date,
    double? cost,
  }) {
    return Shipment(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      itemsCount: itemsCount ?? this.itemsCount,
      courier: courier ?? this.courier,
      deliveryMan: deliveryMan ?? this.deliveryMan,
      status: status ?? this.status,
      date: date ?? this.date,
      cost: cost ?? this.cost,
    );
  }
}

class ShipmentPage extends StatefulWidget {
  const ShipmentPage({super.key});

  @override
  State<ShipmentPage> createState() => _ShipmentPageState();
}

class _ShipmentPageState extends State<ShipmentPage> {
  List<Shipment> shipments = [
    Shipment(
      id: 'SHP1753980784489999',
      name: 'Omar',
      phone: '0796946107',
      itemsCount: 10,
      courier: 'CCC',
      deliveryMan: '0792222222',
      status: 'In Transit',
      date: '7/31/2025, 7:53 PM',
      cost: 110.0,
    ),
    Shipment(
      id: 'SHP1754064979592530',
      name: 'Omar',
      phone: '0796946107',
      itemsCount: 4,
      courier: 'CCC',
      deliveryMan: '0791111111',
      status: 'Delivered',
      date: '7/31/2025, 7:16 PM',
      cost: 115.5,
    ),
  ];

  void _deleteShipment(int index) {
    setState(() {
      shipments.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Shipment deleted successfully')),
    );
  }

  void _editShipment(int index) {
    final shipment = shipments[index];
    showDialog(
      context: context,
      builder: (context) {
        String name = shipment.name;
        String phone = shipment.phone;
        String status = shipment.status;

        return AlertDialog(
          title: const Text('Edit Shipment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Receiver Name'),
                onChanged: (value) => name = value,
                controller: TextEditingController(text: shipment.name),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
                onChanged: (value) => phone = value,
                controller: TextEditingController(text: shipment.phone),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Status'),
                onChanged: (value) => status = value,
                controller: TextEditingController(text: shipment.status),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  shipments[index] = shipment.copyWith(
                    name: name,
                    phone: phone,
                    status: status,
                  );
                });
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Shipment updated successfully'),
                  ),
                );
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Shipment Management',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFC7923E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Total Orders: ${shipments.length}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: shipments.length,
                itemBuilder: (context, index) {
                  final shipment = shipments[index];
                  return Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipment ID: ${shipment.id}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Receiver: ${shipment.name}'),
                          Text('Phone: ${shipment.phone}'),
                          Text('Items: ${shipment.itemsCount}'),
                          Text('Courier: ${shipment.courier}'),
                          Text('Delivery Man: ${shipment.deliveryMan}'),
                          Text('Status: ${shipment.status}'),
                          Text('Date: ${shipment.date}'),
                          Text('Cost: ${shipment.cost} JOD'),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () => _editShipment(index),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                ),
                                child: const Text('Edit'),
                              ),
                              ElevatedButton(
                                onPressed: () => _deleteShipment(index),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: const Text('Delete'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
