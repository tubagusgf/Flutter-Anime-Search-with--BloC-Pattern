part of 'search_bloc.dart';

class SearchState {
  final String title;
  final String imageUrl;
  final String status;

  SearchState({this.title = '', this.imageUrl = '', this.status = ''});

  SearchState copyWith({String? title, String? imageUrl, String? status}) {
    return SearchState(
        title: title ?? this.title,
        imageUrl: imageUrl ?? this.imageUrl,
        status: status ?? this.status);
  }
}
