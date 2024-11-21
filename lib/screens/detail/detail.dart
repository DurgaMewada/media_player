import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/video_provider.dart';

Padding infoContainer({
  required BuildContext context,
  required String username,
  required int com,
  required String likes,
  required String video,
}) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 620,
                ),
                Row(
                  children: [
                    Text(
                      '@mewadaqueen',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  '   Follow for more ⭐💗',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),

              ],
            ),

            Column(
              children: [
                SizedBox(height: 450,),
                Consumer<LikeProvider>(
                  builder: (context, likeProvider, child) {
                    return GestureDetector(
                      onTap: () {
                        likeProvider.toggleLike();
                      },
                      child: Icon(
                        likeProvider.isLiked
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 25,
                        color: likeProvider.isLiked ? Colors.red : null,
                      ),
                    );
                  },
                ),
                Text(
                  '$likes',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Icon(
                  Icons.comment_rounded,
                  color: Colors.white,
                  size: 25,
                ),
                Text(
                  '$com',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Transform(
                  transform: Matrix4.rotationZ(5.8),
                  child: InkWell(
                    onTap: () {
                      Provider.of<ShareProvider>(context, listen: false)
                          .shareReel(video);
                    },
                    child: Icon(
                      Icons.send_sharp,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.white),
                ),

              ],
            ),
          ],
        ),
      ],
    ),
  );
}


