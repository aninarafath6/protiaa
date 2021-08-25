import 'package:flutter/material.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/models/post_model.dart';
import 'dart:math' as math;

import 'package:sparkline/sparkline.dart';

math.Random random = new math.Random();

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    // var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    var data = _generateRandomData((post.likes / 15));

    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * .22,
          width: MediaQuery.of(context).size.width / 3.5,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            boxShadow: AppColors.AVATAR_DROP_SHADOW,
            image: DecorationImage(
              image: AssetImage(post.image),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                post.date,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              post.likes.toString(),
              style: TextStyle(
                color: Colors.grey.withOpacity(.3),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              // color: Colors.white,
              width: MediaQuery.of(context).size.width / 5.5,
              height: 25,
              child: new Sparkline(
                data: data,
                lineColor: Colors.grey.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

List<double> _generateRandomData(double count) {
  List<double> result = <double>[];
  for (int i = 0; i < count; i++) {
    result.add(random.nextDouble() * 100);
  }
  return result;
}
