part of 'search_bloc.dart';

class SearchState {
  final String title;
  final String imageUrl;
  final String status;
  final Exception exception;

  SearchState(
      {this.title = '',
      this.imageUrl = '',
      this.status = '',
      this.exception = const DefException()});

  SearchState copyWith({
    String? title,
    String? imageUrl,
    String? status,
    Exception? exception,
  }) {
    return SearchState(
        title: title ?? this.title,
        exception: exception ?? this.exception,
        imageUrl: imageUrl ?? this.imageUrl,
        status: status ?? this.status);
  }
}
