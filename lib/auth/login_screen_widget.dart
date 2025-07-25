import 'package:flutter/material.dart';

class LoginScreenWidget extends StatelessWidget {
  const LoginScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/salmonz_logo_name.png',
                width: 153,
                height: 118,
              ),
              SizedBox(height: 50),
              InputWidget(label: 'Email', hint: 'Email',),
              SizedBox(height: 20),
              InputWidget(label: 'Password', hint: 'Password',),
              SizedBox(height: 30),
              ButtonWidget(
                name: 'Login account',
                isActive: true,
              ),
              SizedBox(height: 20),
              ButtonWidget(
                name: 'Register',
                isActive: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String name;
  final bool isActive;
  const ButtonWidget({
    super.key,
    required this.name,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: isActive ? Colors.white : Colors.transparent,
          foregroundColor: isActive ? Colors.deepOrange.shade800 : Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 24,
          ),
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: isActive ? BorderSide.none : BorderSide(color: Colors.white, width: 2)),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  final String label;
  final String hint;

  const InputWidget({super.key, required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.8),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.white.withValues(alpha: 0.7),
              ),
              filled: true,
              fillColor: Colors.white.withValues(alpha: 0.2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
