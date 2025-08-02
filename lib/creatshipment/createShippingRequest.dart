import 'package:flutter/material.dart';

class CreateShipmentPage extends StatefulWidget {
  const CreateShipmentPage({super.key});

  @override
  State<CreateShipmentPage> createState() => _CreateShipmentPageState();
}

class _CreateShipmentPageState extends State<CreateShipmentPage> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedGovernorate;

  final List<String> _governorates = [
    'Amman',
    'Zarqa',
    'Irbid',
    'Ajloun',
    'Jerash',
    'Balqa',
    'Madaba',
    'Aqaba',
    'Karak',
    'Tafilah',
    'Maan',
    'Mafraq',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Shipping Request'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.black87,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Text(
                      'Create Shipment',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: _inputDecoration('Client Name'),
                      validator:
                          (value) =>
                              value!.isEmpty
                                  ? 'Please enter client name'
                                  : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: _inputDecoration('Client Phone Number'),
                      keyboardType: TextInputType.phone,
                      validator:
                          (value) =>
                              value!.isEmpty
                                  ? 'Please enter phone number'
                                  : null,
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      decoration: _inputDecoration('Select Governorate'),
                      value: _selectedGovernorate,
                      items:
                          _governorates
                              .map(
                                (gov) => DropdownMenuItem(
                                  value: gov,
                                  child: Text(gov),
                                ),
                              )
                              .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedGovernorate = value;
                        });
                      },
                      validator:
                          (value) =>
                              value == null
                                  ? 'Please select a governorate'
                                  : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: _inputDecoration('Address'),
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Please enter address' : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: _inputDecoration('Shipment Weight (Ton)'),
                      keyboardType: TextInputType.number,
                      validator:
                          (value) =>
                              value!.isEmpty ? 'Please enter weight' : null,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Shipment Request Sent!'),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[700],
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
                          'Submit Request',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
