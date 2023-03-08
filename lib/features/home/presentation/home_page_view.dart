import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/home_appbar.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/home_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body:HomeViewBody(
        ) ,
      ),
    );
  }
}
