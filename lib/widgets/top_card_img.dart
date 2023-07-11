import 'package:flutter/material.dart';

class TopCardImage extends StatelessWidget {
  TopCardImage({Key?key,required this.image,required this.index});
  final List image;
  final int index ;
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 400,
      height:200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image[index]),
          fit:BoxFit.fill,),
          
      ),
    );
  }
}