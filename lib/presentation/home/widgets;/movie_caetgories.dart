import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class MovieCategories extends StatelessWidget {
  final String title;
  const MovieCategories({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 150,
          child: ListView.separated(
            itemCount: 15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return Container(
                width: screenwidth * 0.3,
                height: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            imagecard)),
                    borderRadius: BorderRadius.circular(10)),
              );
            },
            separatorBuilder: (context, index) => kWidth,
          ),
        ),
      ],
    );
  }
}
