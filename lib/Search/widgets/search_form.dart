import 'package:anime_search/Search/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            onChanged: (text) {},
            style: const TextStyle(fontSize: 14),
            controller: controller,
            autocorrect: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    // borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black45,
                  size: 30,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter anime name',
                hintStyle:
                    const TextStyle(color: Colors.black45, fontSize: 14)),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            primary: const Color(0xFFEF233C),
            textStyle: const TextStyle(
              fontSize: 20,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ),
          ),
          onPressed: () {
            context.read<SearchBloc>().add(SearchAnimeData(controller.text));
            controller.text = '';
          },
          child: const Text(
            "Search",
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 14, color: Colors.white),
          ),
        )
      ],
    );
  }
}
