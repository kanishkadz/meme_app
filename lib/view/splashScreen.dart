import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Provide a valid URL for the image
          Image.network(
            'https://preview.redd.it/3nu0molqwqw71.jpg?width=464&format=pjpg&auto=webp&s=994b0e087bab7c4df39f82c6c82194ee9e0b02b3', // Replace with your image URL
            width: MediaQuery.of(context).size.width * 0.8, // Adjust width to 80% of screen width
            height: 300,
            fit: BoxFit.cover, // Adjust image fit
            errorBuilder: (context, error, stackTrace) {
              return Center(child: Text('Failed to load image'));
            },
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
