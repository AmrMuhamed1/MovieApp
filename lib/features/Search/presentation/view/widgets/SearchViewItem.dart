import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utiles/go_router.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({Key? key, required this.movies}) : super(key: key);
  final Map movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 10, left: 20),
      child: InkWell(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kDetailPage,extra: movies);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(


              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.14,
                  height: MediaQuery.of(context).size.height * 0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image:  DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://image.tmdb.org/t/p/original/'+movies['backdrop_path']),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          '${movies['name']?? '${movies['title']}'}',
                          style: Theme.of(context).textTheme.headline5,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5,),

                        Text('Language: ${movies['original_language']}',style: Theme.of(context).textTheme.
                        subtitle1,),

                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    SvgPicture.asset("assets/images/star_fill.svg",),
                    const SizedBox(height:5 ,),
                    Text('${movies['vote_average'].toString().substring(0,3)}/10',style:Theme.of(context).textTheme.
                    subtitle1),

                  ],
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}