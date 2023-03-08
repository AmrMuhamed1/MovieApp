import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/constant.dart';
import 'package:moviesapp/core/utiles/Text_styles.dart';
import 'package:moviesapp/core/utiles/go_router.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_States.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({Key? key, required this.size, required this.movies,   }) : super(key: key);

  final Size size;
  final Map movies;

  @override
  Widget build(BuildContext context) {


        return Container(
          height: size.height * 0.4,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.4 - 50,
                child: Image.network(
                  'https://image.tmdb.org/t/p/original/'+'${movies['poster_path']}',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: size.width * 0.9,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 50,
                        color: const Color(0xFF12153D).withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset("assets/images/star_fill.svg"),
                            const SizedBox(height: kDefaultPadding / 4),
                            RichText(
                              text:  TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: '${movies['vote_average'].toString().substring(0,3)}',
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w600),
                                  ),
                                  TextSpan(text: "/10\n"),
                                  TextSpan(
                                    text: "${movies['vote_count']}",
                                    style: TextStyle(color: kTextLightColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset("assets/images/star.svg"),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("Rate This",
                                  style: Theme.of(context).textTheme.bodyText2),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: const Color(0xFF51CF66),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: const Text(
                                "68",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: kDefaultPadding / 4),
                            const Text(
                              "Metascore",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              "62 critic reviews",
                              style: TextStyle(color: kTextLightColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(child: BackButton(
                onPressed:(){
                  GoRouter.of(context).push(AppRouter.kHomePage);
                } ,
              ))
            ],
          ),
        );



    }

}
