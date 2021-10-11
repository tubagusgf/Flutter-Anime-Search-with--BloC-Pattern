import 'package:anime/anime.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SearchAnimeData>(_onSearch);
  }

  void _onSearch(SearchAnimeData event, Emitter<SearchState> emit) async {
    // print("TITLE =========> " + event.title);
    // print("STATUS =========> " + state.status);
    emit(state.copyWith(status: 'process'));

    try {
      final anime = await AnimeRepository.getAnimeFromTitle(event.title);
      return emit(state.copyWith(
          status: 'success', title: anime.title, imageUrl: anime.imageUrl));
    } catch (e) {
      // print(e);
      return emit(state.copyWith(status: 'failed'));
    }
  }
}
