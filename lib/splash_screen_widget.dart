import 'package:flutter/material.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 118,
              width: 153,
              child: Image.asset('images/salmon_logo_white.png')
              ),
            SizedBox(
              height: 150,
            ),
            Opacity(
              opacity: 0.5,
              child: Text('Loading...', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
                
              ),),
            )
          ],
        ),
      ),
    );
  }
}
