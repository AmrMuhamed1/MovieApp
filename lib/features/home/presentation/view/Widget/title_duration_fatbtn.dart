import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/core/utiles/Text_styles.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_States.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';

class TitleDurationAndFabBtn extends StatelessWidget {


  const TitleDurationAndFabBtn({Key? key, required this.movies,    }) : super(key: key);
  final Map movies;
  @override
  Widget build(BuildContext context) {

    return   Padding(
      padding: const EdgeInsets.only(top: 25,left: 40,right: 32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${movies['name']?? '${movies['title']}'}',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: kDefaultPadding / 2),
                Row(
                  children:  <Widget>[
                    Text(
                      '${movies['release_date']??'---'} ',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      '${movies['original_language'??'---'].toString().toUpperCase()}',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      "2h 32min",
                      style: TextStyle(color: kTextLightColor),
                    ),


                  ],

                )
              ],
            ),
          ),
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child: TextButton(
              onPressed: () {


              },
              // color: kSecondaryColor,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),

            ),

          )
        ],
      ),
    );

  }
}
