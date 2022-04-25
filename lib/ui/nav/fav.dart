import 'package:flutter/material.dart';
class Fav extends StatelessWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const  [
         Center(child: Text("FAVOURITE")),
      ],
    );
  }
}
