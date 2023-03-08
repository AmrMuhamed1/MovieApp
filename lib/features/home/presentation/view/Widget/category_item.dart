
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/features/home/presentation/manager/category_cubit/Category%20cubit.dart';
import 'package:moviesapp/features/home/presentation/manager/category_cubit/category_state.dart';

class CategoryItem extends StatelessWidget {
   CategoryItem({Key? key, required this.index, }) : super(key: key);

   final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = CategoryCubit.get(context);
      return BlocBuilder<CategoryCubit,CategoryState>(builder: (context,state){
        return  InkWell(
          onTap: (){
            cubit.navigateCategory(index);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${cubit.categories[index]} ',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: index== cubit.selecteditem? Colors.red : Colors.grey
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  height: 6,
                  width: 40,
                  decoration: BoxDecoration(
                      color: index == cubit.selecteditem? Colors.red : Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
          ),
        );
      });

    }
  }

