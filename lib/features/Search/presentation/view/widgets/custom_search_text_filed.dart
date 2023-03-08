import 'package:flutter/material.dart';
import 'package:moviesapp/features/Search/presentation/manager/search_Cubit/search_cubit.dart';

class CustomSearchTextField extends StatelessWidget {
   CustomSearchTextField({Key? key}) : super(key: key);

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = SearchCubit.get(context);
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: textController,
        onSubmitted: (data){
          cubit.getSearch(searchName: data);
        },
        onChanged:(data){
          cubit.getSearch(searchName: data);
        } ,
        decoration: InputDecoration(
          suffixIcon: IconButton(icon :Icon(Icons.search),onPressed: (){}, ),
          enabledBorder:buildOutLineBoarder(),
          focusedBorder: buildOutLineBoarder(),

        ),
      ),
    );
  }
}



OutlineInputBorder buildOutLineBoarder() =>OutlineInputBorder(
    borderRadius:BorderRadius.circular(12),
    borderSide:BorderSide(
        color: Colors.black
    ));
