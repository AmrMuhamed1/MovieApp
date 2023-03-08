import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/features/home/presentation/view/Widget/Detailes_Page_view_Body.dart';

class DetailsPageView extends StatefulWidget {
   DetailsPageView({Key? key, required this.movies,  }) : super(key: key);
   final Map movies ;
  @override
  State<DetailsPageView> createState() => _DetailsPageViewState();
}

class _DetailsPageViewState extends State<DetailsPageView> {
  @override

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(

        body: DetailsPageViewBody(
          movies: widget.movies,


        ),
      ),
    );
  }
}
