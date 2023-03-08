
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utiles/Text_styles.dart';
import 'package:moviesapp/core/utiles/go_router.dart';
import 'package:moviesapp/features/home/presentation/home_page_view.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override

  void initState() {
    navigateTOHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Movies4U',style: Styles.textstyles32.copyWith(
              fontSize: 60
            ),),
            const SizedBox(height: 20,),
            const Text('Choose Your Fav Movie',style: Styles.textstyles18,),
          ],
        ),
      ],
    );

  }

  void navigateTOHome(){
    Future.delayed(
        const Duration(
            seconds: 3
        ),(){
      GoRouter.of(context).push(AppRouter.kHomePage);
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }

    );
  }
}
