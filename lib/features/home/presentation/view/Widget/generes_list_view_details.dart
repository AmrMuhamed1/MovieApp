import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presentation/manager/genres_cubit/genres-cubit.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/genres_item.dart';

class GenresListDetails extends StatelessWidget {
  const GenresListDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => GenresItem(index: index,)

        ),
      ),
    );
  }
}
