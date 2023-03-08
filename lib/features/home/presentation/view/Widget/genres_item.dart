
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/core/utiles/Text_styles.dart';
import 'package:moviesapp/features/home/presentation/manager/genres_cubit/genres-cubit.dart';
import 'package:moviesapp/features/home/presentation/manager/genres_cubit/genres_state.dart';

class GenresItem extends StatelessWidget {
  const GenresItem({Key? key, required this.index}) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context) {
    var cubit = GenresCubit.get(context);
    return BlocBuilder<GenresCubit,GenresState>(
      builder: (context,state) => GestureDetector(
        onTap: (){
          cubit.genresNavigate(index);

        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: kDefaultPadding),
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4,horizontal:kDefaultPadding ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(color:cubit.selectedItem == index?  Colors.red : Colors.black26)

          ),

          child: Text('${cubit.genre[index]}',style: Styles.textstyles16.copyWith(
              color: index == cubit.selectedItem ? Colors.red  : Color(0xFF12153D).withOpacity(0.8)
          ),),
        ),
      ),
    );
  }
}
