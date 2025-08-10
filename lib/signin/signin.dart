import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final form = GlobalKey<FormState>();
  final emaill = TextEditingController();
  final pss = TextEditingController();

  @override
  void dispose() {
    emaill.dispose();
    pss.dispose();
    super.dispose();
  }

  void _login() {
    if (form.currentState!.validate()) {
      String phone = emaill.text.trim();
      String password = pss.text;

      // التحقق من رقم الهاتف وكلمة السر
      if (phone == '0799999999' && password == '123456@') {
        // نجاح الدخول -> انتقل لصفحة الملف الشخصي
        Navigator.pushReplacementNamed(context, '/profile');
      } else if (phone == '0788888888' && password == '123456@') {
        // نجاح الدخول -> انتقل لصفحة ملف مندوب التوصيل
        Navigator.pushReplacementNamed(context, '/profileDeliveryMan');
      } else if (phone == '0777777777' && password == '123456@') {
        // ادمن يدخل على صفحة الادمن
        Navigator.pushReplacementNamed(context, '/adminprofile');
      } else {
        // عرض رسالة خطأ
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid phone number or password')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFC7923E),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  SizedBox(height: 20),

                  Text(
                    "If you have an account, you're awesome - better than those who don't have one.",
                    style: TextStyle(fontSize: 20, color: Color(0xFFC7923E)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: emaill,
                    decoration: InputDecoration(
                      labelText: 'Your phone number',
                      labelStyle: TextStyle(color: Color(0xFFC7923E)),
                      filled: true,
                      fillColor: Colors.grey[900],
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFC7923E)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                        return 'Please enter a valid 10-digit phone number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: pss,
                    decoration: InputDecoration(
                      labelText: 'Your password',
                      labelStyle: TextStyle(color: Color(0xFFC7923E)),
                      filled: true,
                      fillColor: Colors.grey[900],
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFC7923E)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC7923E),
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
