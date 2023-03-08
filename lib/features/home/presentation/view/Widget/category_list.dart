import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moviesapp/features/home/presentation/view/Widget/category_item.dart';

class CategoryList extends StatelessWidget {
   CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 60,
      child: ListView.builder(
        itemBuilder: (context, index) =>  CategoryItem(index: index,),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );

  }
}
