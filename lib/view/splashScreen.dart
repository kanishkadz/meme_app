import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Provide a valid URL for the image
          Image.network(
            'https://example.com/your-image.png', // Replace with your image URL
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
          SizedBox(height: 30),
          Text(
            'A Meme App',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
