
import 'package:flutter/material.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_images.dart';

class NoiseContainer extends StatelessWidget {
  const NoiseContainer({
    Key? key,
    this.body,
  }) : super(key: key);
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:const BoxDecoration(
            gradient:  AppColors.BACKGROUND_GRADIENT,
          ),
          child: Opacity(
            opacity: 0.01,
            child: Image.asset(
              AppImages.NOISE_BACKGROUND,
              fit: BoxFit.cover,
            ),
          ),
        ),
        body ?? SizedBox(),
      ],
    );
  }
}
