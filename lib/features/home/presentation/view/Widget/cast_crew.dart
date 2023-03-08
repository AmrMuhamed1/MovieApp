import 'package:flutter/material.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/cast_card.dart';


class CastAndCrew extends StatelessWidget {

  const CastAndCrew({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Cast & Crew",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: kDefaultPadding),
            SizedBox(
              height: 160,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => const CastCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
