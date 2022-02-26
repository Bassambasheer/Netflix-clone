import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar-widget.dart';
final List<String> movieDetails = [
  'Comic',
  'Drama',
  'Periodic Piece',
  'US'
];

class ScreenComingSoon extends StatelessWidget {
  const ScreenComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const PreferredSize(
        child: AppBarWidget(
          title: 'Coming Soon',
        ),
        preferredSize: Size(
          double.infinity,
          50,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight,
                Text(
                  'Ant Man',
                  style: TextStyle(
                    color: whitecolor,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                space,
                const Text(
                  'Hank Pym, pull off a plan that will save the world. Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: List.generate(
                    movieDetails.length,
                    (index) {
                      String movie=movieDetails[index];
                      return Row(
                        children: [
                          Text(
                            movie,
                            style:const TextStyle(
                                color: whitecolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        const  Padding(
                            padding:  EdgeInsets.only(bottom: 10),
                            child: Text('.',style: TextStyle(color: whitecolor,fontWeight: FontWeight.bold,fontSize: 20),),
                          )
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.3,
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.3,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.ytimg.com/vi/pWdKf3MneyI/maxresdefault.jpg'),
                          ),
                        ),
                        child: Center(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: whitecolor,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: blackcolor,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.play_arrow,
                                  color: whitecolor,
                                  size: 30,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          backgroundColor: blackcolor,
                          radius: 20,
                          child: IconButton(
                            icon: const Icon(
                              Icons.volume_off,
                              color: whitecolor,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                space,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(
                      width: 90,
                      height: 50,
                      image: NetworkImage(
                          'https://www.awn.com/sites/default/files/styles/original/public/image/featured/1024954-marvel-returns-sarofsky-ant-man-main-end-titles.png?itok=rl4yfyyO'),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_none),
                              color: whitecolor,
                              iconSize: 30,
                            ),
                            const Text("Remind Me",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),)
                          ],
                        ),
                        kWidth,
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.info_outlined,
                                color: whitecolor,
                              ),
                              iconSize: 30,
                            ),
                             const Text("Info",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),),
                            
                          ],
                        ),
                        kWidth
                      ],
                    ),
                  ],
                ),
                space,
               const Text("Ant Man returns coming on march 25",
               style: TextStyle(
                 color: Colors.grey
               ),)
              ],
            ),
          );
        },
      ),
    );
  }
}