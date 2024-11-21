import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../utils/list.dart';
import '../video/video_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Swiper(
            itemBuilder: (BuildContext context, int index) {
              return VideoScreen(
                video: videoList[index]['video'],
                username: videoList[index]['username'],
                comments: videoList[index]['comments'],
                likes: videoList[index]['likes'],
              );
            },
            itemCount: videoList.length,
            scrollDirection: Axis.vertical,
          ),
        ],
      ),

    );
  }
}
