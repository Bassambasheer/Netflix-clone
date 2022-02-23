import 'package:flutter/material.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
       Text("Top Searches",
         style: TextStyle(
           fontSize: 22,
           fontWeight: FontWeight.bold
         ),),
      ],
      
    );
  }
}