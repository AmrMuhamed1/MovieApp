import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/utiles/api_service.dart';

import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_States.dart';

class CardCubit extends Cubit<CardStates> {
  CardCubit() : super(InitialCardStete());
  static CardCubit get(context) =>BlocProvider.of(context);
List<dynamic> movies = [];
  void getdata(){
    emit(LoadingCardState());
Diohelper.getdata(url: '/3/trending/all/day?', query: {
  'api_key':'cfdad4720771fa504b5a1218439a7d9d'
}).then((value) {
movies = value.data['results'];
print(movies[0]['overview']);

emit(SuccessCardState());
}).catchError((error){

  emit(FailureCardState(error.toString()));
}

);
  }

}

