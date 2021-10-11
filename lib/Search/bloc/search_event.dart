part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchAnimeData extends SearchEvent {
  final String title;

  const SearchAnimeData(this.title);

  @override
  List<Object> get props => [title];
}
