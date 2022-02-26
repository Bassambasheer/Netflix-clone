import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
 const AppBarWidget({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
           Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: Colors.white,
            size: 30,
          ),
          kWidth,
          Image(image: NetworkImage("https://occ-0-2041-3662.1.nflxso.net/art/0d282/eb648e0fd0b2676dbb7317310a48f9bdc2b0d282.png",
          scale: 12
          )),
          kWidth,
        ],
      ),
    );
  }
}
