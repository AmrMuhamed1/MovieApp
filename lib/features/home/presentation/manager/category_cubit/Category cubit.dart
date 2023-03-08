import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/features/home/presentation/manager/category_cubit/category_state.dart';

class CategoryCubit extends Cubit<CategoryState>{

  CategoryCubit() : super(CategoryIntial());
  static CategoryCubit get(context) =>BlocProvider.of(context);

  List<String> categories=["In Theater", "Box Office", "Coming Soon"];

  int selecteditem = 0;


  void navigateCategory(int index){

selecteditem = index;
emit(CategoryNavigate());
  }
}