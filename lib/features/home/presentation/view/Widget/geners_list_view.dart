import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/core/utiles/Text_styles.dart';
import 'package:moviesapp/features/home/presentation/manager/genres_cubit/genres-cubit.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/genres_item.dart';

class GenresListView extends StatelessWidget {
  const GenresListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(itemBuilder: (context, index) => GenresItem(index: index,),
        itemCount: GenresCubit.get(context).genre.length,
      scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}