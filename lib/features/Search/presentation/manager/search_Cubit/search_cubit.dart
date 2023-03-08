
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/features/Search/presentation/manager/search_Cubit/search_state.dart';

import '../../../../../core/utiles/api_service.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(InitialSearchStete());
  static SearchCubit get(context) =>BlocProvider.of(context);


  List<dynamic> movies = [];
  void getSearch({required String searchName}){
    emit(LoadingSearchState());
    Diohelper.getdata(url: '/3/trending/all/day?&sortedb', query: {
      'api_key':'cfdad4720771fa504b5a1218439a7d9d'
    }).then((value) {
      movies = value.data['results'];

      emit(SuccessSearchState());
    }).catchError((error){

      emit(FailureSearchState(error.toString()));
    }

    );
  }


}

