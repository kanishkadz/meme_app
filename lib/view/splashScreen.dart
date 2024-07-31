import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              width : MediaQuery.of(context).size.width,
              height : 300,
              "https://i.pinimg.com/originals/83/27/a9/8327a98698061362deb5749cee5b93d5.jpg"),
          SizedBox(height: 30,),
          Text("A Meme App" , style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}