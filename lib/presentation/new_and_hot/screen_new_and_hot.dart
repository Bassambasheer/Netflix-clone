import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/app_bar-widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        child: AppBarWidget(title: "Hot and New"),
         preferredSize: Size.fromHeight(50),),
      
    );
  }
}