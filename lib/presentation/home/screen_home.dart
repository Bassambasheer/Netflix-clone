import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets;/movie_caetgories.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final List dummyData = List.generate(50, (index) => MainCard());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tv Shows',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Movies',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Categories',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              leading: Image.network(
                  'https://hollywoodlife.com/wp-content/uploads/2020/11/Netflix_Symbol_RGB-1.png'),
              backgroundColor: Colors.transparent,
              expandedHeight: 392,
              actions: [
                Row(
                  children: [
                    Icon(Icons.cast),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.network(
                      'https://occ-0-2041-3662.1.nflxso.net/art/0d282/eb648e0fd0b2676dbb7317310a48f9bdc2b0d282.png',
                      scale: 15,
                    ),
                    kWidth
                  ],
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://i.redd.it/63v93rqn94t31.png',
                  fit: BoxFit.cover,
                ),
              ),
             
              toolbarHeight: 70,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Action',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              kWidth,
                              Icon(
                                Icons.fiber_manual_record,
                                size: 5,
                                color: Colors.white,
                              ),
                              kWidth,
                              Text(
                                'Adventure',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text('My List',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ],
                          ),
                          Container(
                            color: Colors.white,
                            width: 80,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.play_arrow),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Play',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: const [
                              Icon(Icons.info_outlined, color: Colors.white),
                              Text('Info',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ],
                          ),
                        ]),
                  MovieCategories(title: "Popular on Netflix",),
                  MovieCategories(title: "Sci-fi Movies",),
                  MovieCategories(title: "Action Movies",),
                   MovieCategories(title: "Trending Now",),
                     MovieCategories(title: "Popular on Netflix",),
                  MovieCategories(title: "Sci-fi Movies",),
                  MovieCategories(title: "Action Movies",),
                   MovieCategories(title: "Trending Now",),
                   
                  
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
