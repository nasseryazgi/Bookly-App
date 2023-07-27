import 'package:bookly/Features/search/preesentation/manager/searchbook_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/search_repo.dart';

class SearchbookCubit extends Cubit<SearchbookState> {
  SearchbookCubit(this.searchrepo) : super(SearchbookInitial());
  final SearchRepo searchrepo;
  Future<void> featurecustombook({required String text}) async{
    emit(SearchbookLoading());
    var response = await searchrepo.searchBookName(bookName: text);
    response.fold((faillure) {
      emit(SearchbookError(faillure.errorMessage));
    }, (books) {
      emit(SearchbookSuccers(books));
    });
  }
}