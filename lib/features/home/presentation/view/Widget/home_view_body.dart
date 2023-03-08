import 'package:flutter/material.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/core/utiles/api_service.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/category_list.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/geners_list_view.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/home_appbar.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/movie_item.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/movies_item_listview.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
            child: Column(
              children: [
                const HomeAppBar(),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                CategoryList(),
                const SizedBox(
                  height: 33,
                ),
                const GenresListView(),
                 const MoviesItemListView(),



                // FloatingActionButton(onPressed: (){
                //   CardCubit.get(context).getMovies();
                //
                // })
              ],
            ),
          ),

      ],
    );
  }
}
