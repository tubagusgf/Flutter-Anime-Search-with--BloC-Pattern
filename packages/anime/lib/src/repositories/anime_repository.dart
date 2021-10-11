import 'package:anime/src/dataproviders/anime_api.dart';
import 'package:anime/src/models/anime.dart';

class AnimeRepository {
  static Future<Anime> getAnimeFromTitle(String title) async {
    final Future<Anime> rawAnime = AnimeApi.connectToAPI(title);

    return rawAnime;
  }
}
