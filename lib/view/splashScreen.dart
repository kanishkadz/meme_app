import 'package:flutter/material.dart';


class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://images.theconversation.com/files/38926/original/5cwx89t4-1389586191.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"),
          SizedBox(height: 30,),
          Text("SED LYF"),
          Text("A Meme App !!"),
        ],
      )),
    );
  }
}
