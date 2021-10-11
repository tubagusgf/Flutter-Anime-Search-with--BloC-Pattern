import 'package:anime_search/Search/view/search_body.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Anime with BloC Pattern"),
      ),
      body: const SearchBody(),
    );
  }
}
