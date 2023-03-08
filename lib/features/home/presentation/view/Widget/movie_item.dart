import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/core/utiles/Text_styles.dart';
import 'package:moviesapp/core/utiles/assets.dart';
import 'package:moviesapp/core/utiles/go_router.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';

class MovieItem extends StatelessWidget {
   MovieItem({Key? key, this.moviesmodel,    }) : super(key: key);
  final  moviesmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetailPage,extra: moviesmodel
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding:
                const EdgeInsets.only( left: 60, right: 45.5,bottom: 20),
            child: Container(

              width: MediaQuery.of(context).size.height * 0.33,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://image.tmdb.org/t/p/original/'+moviesmodel['backdrop_path']),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 35,left: 60,right: 45.5),
            child: Text(
              '${moviesmodel['title'] ?? '${moviesmodel['name']}' }',
      style: Styles.textstyles32.copyWith(fontWeight: FontWeight.w600,),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.star,
                color: Color(0xffFCC419),
              ),
              SizedBox(width: kDefaultPadding / 2),
              Text(
                '${(moviesmodel['vote_average'].toString().substring(0,3))}',
                style: Styles.textstyles18.copyWith(fontWeight: FontWeight.w500,color: Color(0xff434670).withOpacity(0.9)),
              ),

            ],
          )
        ],
      ),
    );
  }
}
