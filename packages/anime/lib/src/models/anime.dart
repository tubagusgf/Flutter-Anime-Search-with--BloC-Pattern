import 'package:json_annotation/json_annotation.dart';

part 'anime.g.dart';

@JsonSerializable()
class Anime {
  String title;
  String imageUrl;

  Anime({
    required this.title,
    required this.imageUrl,
  });

  // rubah json ke Anime
  factory Anime.fromJson(Map<String, dynamic> object) {
    return Anime(
      title: object['title'],
      imageUrl: object['image_url'],
    );
  }

  // factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
  // Map<String, dynamic> toJson() => _$AnimeToJson(this);
}
