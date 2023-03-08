import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utiles/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 18),
      child: Row(
        children: [
          SizedBox(
            height: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/menu.svg',
                fit: BoxFit.fill,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchPage);

              },
              icon: const Icon(Icons.search),
              )
        ],
      ),
    );
  }
}
