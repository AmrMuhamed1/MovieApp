import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/Details_Image.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/cast_crew.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/generes_list_view_details.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/geners_list_view.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/title_duration_fatbtn.dart';

class DetailsPageViewBody extends StatelessWidget {
   DetailsPageViewBody({Key? key, required this.movies,      }) : super(key: key);
  @override
final Map movies;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
       SliverToBoxAdapter (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              DetailsImage(
                movies: movies,

                size: size,
              ),
              const SizedBox(height: kDefaultPadding,),
               TitleDurationAndFabBtn(
                 movies: movies,
              ),
              const GenresListDetails(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                  horizontal: kDefaultPadding,
                ),
                child: Text(
                  "${movies['name']?? '${movies['title']}'}",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text('${movies['overview']}',
                  style: TextStyle(
                    color: Color(0xFF737599),
                  ),
                ),
              ),
              CastAndCrew(),





            ],
          ),
        ),

      ],
    );
  }
}
