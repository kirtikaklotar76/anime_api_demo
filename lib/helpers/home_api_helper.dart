import 'dart:convert';
import 'dart:developer';

import 'package:anime_api_demo/models/anime_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class AnimeHelper {
  AnimeHelper._();

  static final AnimeHelper animeHelper = AnimeHelper._();

  String api = "https://api.jikan.moe/v4/anime";
  Logger logger = Logger();

  Future<List<AnimeModel>?> getAnime() async {
    http.Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List anime = data['data'];
      // log("=========${anime}");

      List<AnimeModel> allAnime = anime.map((e) {
        log("--------AllAnime List : $e");
        return AnimeModel.fromJson(e);
      }).toList();
      logger.d("AllAnimee--: ${allAnime}");
      return allAnime;
    } else {
      return null;
    }
  }
}
