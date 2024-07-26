import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Meme #21", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
            Text("Target 500 memes", style: TextStyle(fontSize: 18),),
            SizedBox(height: 20,),
            Image.network("https://images.theconversation.com/files/38926/original/5cwx89t4-1389586191.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Container(
                height: 50,
                width: 150,
                child: Center(child: Text("More Fun !!"))))
          ],
        ),
      ),
    );
  }
}
