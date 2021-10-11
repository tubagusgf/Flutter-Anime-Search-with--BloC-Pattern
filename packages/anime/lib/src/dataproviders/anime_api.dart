import 'dart:convert';

import 'package:anime/src/models/anime.dart';
import 'package:http/http.dart' as http;

class AnimeApi {
  static Future<Anime> connectToAPI(String title) async {
    String apiURL = "https://api.jikan.moe/v3/search/anime?q=$title&limit=1";

    var res = await http.get(Uri.parse(apiURL));
    // rubah response ke json
    var jsonObj = json.decode(res.body);
    // print(jsonObj);
    // print('TITLE 2 ========>' + jsonObj['results'][0]);

    // Map<String, dynamic> map = json.decode(res.body);
    // List<dynamic> data = map["results"];
    // print("data[0] ==========> " + data[0]);

    var animeData = (jsonObj as Map<String, dynamic>)['results'][0];

    // var animeData = {
    //   'title': jsonObj['results'][0]['title'],
    //   'imageUrl': jsonObj['results'][0]['image_url']
    // };

    // print(animeData);

    return Anime.fromJson(animeData);
  }
}
