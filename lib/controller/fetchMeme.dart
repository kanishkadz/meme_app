import 'package:http/http.dart';
class FetchMeme{

  fetchNewMeme()async{

    Response response = await get(Uri.parse("https://api.imgflip.com/get_memes"));
    print(response.body);

  }
}