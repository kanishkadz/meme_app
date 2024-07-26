import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Meme #21"),
          Text("Target 500 memes"),
          Image.network("src"),
          ElevatedButton(onPressed: (){}, child: Text("More Fun !!"))
        ],
      ),
    );
  }
}
