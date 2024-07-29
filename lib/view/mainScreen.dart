import 'package:flutter/material.dart';
import 'package:meme_app/controller/fetchMeme.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  void UpdateImg()async{
    String getImgUrl = await FetchMeme.fetchNewMeme();
    setState(() {
      imgUrl = getImgUrl;
    });
  }
  String imgUrl = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    UpdateImg();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Meme #21",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Text(
              "Target 500 memes",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Image.network(imgUrl),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  UpdateImg();
                },
                child: Container(
                    height: 50,
                    width: 150,
                    child: Center(
                        child: Text(
                      "More Fun !!",
                      style: TextStyle(fontSize: 20),
                    )))),
            Spacer(),
            Text(
              "App created by",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Kanishka Anand",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
