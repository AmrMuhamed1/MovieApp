import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utiles/api_service.dart';
import 'package:moviesapp/core/utiles/go_router.dart';
import 'package:moviesapp/features/Search/presentation/manager/search_Cubit/search_cubit.dart';
import 'package:moviesapp/features/home/presentation/manager/card_cubit/card_cubit.dart';
import 'package:moviesapp/features/home/presentation/manager/category_cubit/Category%20cubit.dart';
import 'package:moviesapp/features/home/presentation/manager/genres_cubit/genres-cubit.dart';
import 'package:moviesapp/features/splash/presentation/view/splash_view.dart';


void main() {
  runApp(const MyApp());
  Diohelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context)=> CategoryCubit(),
          
        ),
        BlocProvider(create: (context)=>CardCubit()..getdata()),
        BlocProvider(create: (context)=>GenresCubit()),
        BlocProvider(create: (context)=>SearchCubit()),


      ],
      child: MaterialApp.router(


        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFFFFFF)),
      ),
    );

  }
}
