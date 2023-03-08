import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moviesapp/core/utiles/Text_styles.dart';
import 'package:moviesapp/features/Search/presentation/manager/search_Cubit/search_cubit.dart';
import 'package:moviesapp/features/Search/presentation/manager/search_Cubit/search_state.dart';
import 'package:moviesapp/features/Search/presentation/view/widgets/SearchViewItem.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchStates>(
      builder: (context,state){
        if(state is SuccessSearchState){
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) =>  SearchListViewItem(movies: SearchCubit.get(context).movies[index],

            ),
            itemCount: SearchCubit.get(context).movies.length,
          );
        }
        else if (state is FailureSearchState){
          return Text(state.error);
        }
        return const Center(child: CircularProgressIndicator(),);
      },

    );
  }
}


