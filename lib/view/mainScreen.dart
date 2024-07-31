import 'package:flutter/material.dart';
import 'package:meme_app/controller/fetchMeme.dart';
import 'package:meme_app/controller/saveMyData.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String imgUrl = "";
  int? memeNo;
  int targetMeme = 100;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    GetInitMemeNo();
    UpdateImg();
  }

  GetInitMemeNo() async {
    memeNo = await SaveMyData.fetchData() ?? 0;
    if (memeNo! > 500) {
      targetMeme = 1000;
    } else if (memeNo! > 100) {
      targetMeme = 500;
    }
    setState(() {});
  }

  void UpdateImg() async {
    String getImgUrl = await FetchMeme.fetchNewMeme();
    setState(() {
      imgUrl = getImgUrl;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                "Meme #${memeNo.toString()}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                "Target ${targetMeme} Memes",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              isLoading
                  ? SizedBox(
                height: 300,
                width: double.infinity,
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
                  : SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  await SaveMyData.saveData(memeNo! + 1);
                  GetInitMemeNo();
                  UpdateImg();
                },
                child: Container(
                  height: 40,
                  width: 200,
                  child: Center(
                    child: Text(
                      "More Fun!!",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "App Created By",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "KANISHKA ANAND",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
