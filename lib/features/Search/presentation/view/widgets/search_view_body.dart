import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utiles/go_router.dart';
import 'package:moviesapp/features/Search/presentation/view/widgets/custom_search_lits_view.dart';
import 'package:moviesapp/features/Search/presentation/view/widgets/custom_search_text_filed.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({Key? key}) : super(key: key);
  var formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).push(AppRouter.kHomePage);
        }, icon: Icon(Icons.arrow_back)),
        CustomSearchTextField(),
      const Expanded(child: CustomSearchListView())
      ],

    );
  }
}