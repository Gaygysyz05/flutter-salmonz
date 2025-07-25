import 'package:flutter/material.dart';
import 'package:tutorial/auth/login_screen_widget.dart';

class RegisterScreenWidget extends StatelessWidget {
  const RegisterScreenWidget({super.key});

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
              InputWidget(label: 'Name', hint: 'Name'),
              SizedBox(height: 20),
              InputWidget(label: 'Email', hint: 'Email'),
              SizedBox(height: 20),
              InputWidget(label: 'Password', hint: 'Password'),
              SizedBox(height: 20),
              InputWidget(
                  label: 'Repeat the Password', hint: 'Repeat the Password'),
              SizedBox(height: 30),
              ButtonWidget(name: 'Register', isActive: true),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                 debugPrint('Hello');
                },
                child: Text(
                  'I don\'t have account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
