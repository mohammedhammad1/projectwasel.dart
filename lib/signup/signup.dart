import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool alreadyRegistered = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();

  String? selectedRole;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showRoleOptions() async {
    final result = await showModalBottomSheet<String>(
      context: context,
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder:
          (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Center(
                  child: Text(
                    'Login as Shipment Manager',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context, 'Shipment Manager');
                },
              ),
              Divider(color: Colors.grey),
              ListTile(
                title: Center(
                  child: Text(
                    'Login as Delivery Agent',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context, 'Delivery Agent');
                },
              ),
            ],
          ),
    );

    if (result != null) {
      setState(() {
        selectedRole = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (alreadyRegistered) {
      Future.microtask(() {
        Navigator.pushReplacementNamed(context, '/login');
      });
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          " Create a New Account",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(70),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1E1E1E), Color(0xFFC7923E)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.all(4),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      "https://i.postimg.cc/Hx2F7RHq/Chat-GPT-Image-Jul-22-2025-03-09-02-PM.png",
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(height: 30),

                // Start: Registration Role Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _showRoleOptions,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          selectedRole == null
                              ? 'Choose Registration Category'
                              : selectedRole!,
                          style: TextStyle(
                            color: Color(0xFFC7923E),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_drop_down, color: Color(0xFFC7923E)),
                      ],
                    ),
                  ),
                ),

                // End: Registration Role Button
                SizedBox(height: 30),
                TextField(
                  cursorColor: Color(0xFFC7923E),
                  decoration: InputDecoration(
                    labelText: ' please enter full name',
                    labelStyle: TextStyle(color: Color(0xFFC7923E)),
                    filled: true,
                    fillColor: Colors.grey[900],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                  ),
                  style: TextStyle(color: Color(0xFFC7923E)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xFFC7923E),
                  decoration: InputDecoration(
                    labelText: '  please enter phone number',
                    labelStyle: TextStyle(color: Color(0xFFC7923E)),
                    filled: true,
                    fillColor: Colors.grey[900],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                  ),
                  style: TextStyle(color: Color(0xFFC7923E)),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Color(0xFFC7923E),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' please enter your email';
                    }
                    final emailRegex = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if (!emailRegex.hasMatch(value)) {
                      return '   Invalid email address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: '   please enter your email',
                    labelStyle: TextStyle(color: Color(0xFFC7923E)),
                    filled: true,
                    fillColor: Colors.grey[900],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  style: TextStyle(color: Color(0xFFC7923E)),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  cursorColor: Color(0xFFC7923E),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your password';
                    }
                    if (value.length < 6) {
                      return ' Password must be at least 6 characters long';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: ' please enter your password',
                    labelStyle: TextStyle(color: Color(0xFFC7923E)),
                    filled: true,
                    fillColor: Colors.grey[900],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey[700]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Color(0xFFC7923E),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  style: TextStyle(color: Color(0xFFC7923E)),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      value: alreadyRegistered,
                      onChanged: (value) {
                        setState(() {
                          alreadyRegistered = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        " Already have an account? Log in",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Validation passed.')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    " Sign Up ",
                    style: TextStyle(color: Color(0xFFC7923E), fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
