import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/features/home/presentation/manager/genres_cubit/genres_state.dart';

class GenresCubit extends Cubit<GenresState>{
static GenresCubit get(context) => BlocProvider.of(context);
  GenresCubit() : super (InitialGenresState());

  List<String> genre =  ["Action", "Biography", "Drama","Romantic"];
   int selectedItem = 0;

   void genresNavigate(int index){
    selectedItem = index;
    emit(NavigateGenresState());


  }


}