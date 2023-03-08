import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_States.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/movie_item.dart';

class MoviesItemListView extends StatelessWidget {
   const MoviesItemListView({Key? key, }) : super(key: key);
   @override
  Widget build(BuildContext context) {


        return BlocBuilder<CardCubit,CardStates>(builder: (context,state)
        {
          if (state is SuccessCardState) {
            return Expanded(
              child: ListView.builder(itemBuilder: (context, index) =>
                  MovieItem(
                    moviesmodel: CardCubit.get(context).movies[index],
                  ),
                itemCount:CardCubit.get(context).movies.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
              ),
            );
          } else if (state is FailureCardState) {
            return Text(state.error);
          }
          return const Center(child: CircularProgressIndicator(),);
        }
        );

  }
}
