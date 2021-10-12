import 'package:anime_search/Search/bloc/search_bloc.dart';
import 'package:anime_search/Search/widgets/search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state.status == 'process') {
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFFEF233C),
                  ),
                ),
              );
            },
          );
        } else if (state.status == 'failed') {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Center(child: Text(state.exception.toString())),
              );
            },
          );
        } else if (state.status == 'success') {
          Navigator.pop(context);
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(state.imageUrl),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        state.title,
                        textAlign: TextAlign.center,
                      ),
                    ]),
              );
            },
          );
        }
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("Search your favorite anime !"), SearchForm()],
        ),
      ),
    );
  }
}
