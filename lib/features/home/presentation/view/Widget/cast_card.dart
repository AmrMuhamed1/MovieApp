import 'package:flutter/material.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';



class CastCard extends StatelessWidget {

  const CastCard({ Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/actor_2.png',
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Text(
            'amr',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          const SizedBox(height: kDefaultPadding / 4),
          const Text(
            'movie',
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(color: kTextLightColor),
          ),


        ],
      ),
    );
  }
}
