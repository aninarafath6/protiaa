import 'package:flutter/material.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_images.dart';
import 'package:protiaa_codex/constants/app_sizes.dart';
import 'package:protiaa_codex/views/widgets/noiseContainer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoiseContainer(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.DEFAULT_PADDING_HOR,
              vertical: AppSizes.DEFAULT_PADDING_VERT,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.LOGO,
                      width: 150,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.AVATAR_BORDER_COLOR,
                          width: .3,
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            AppImages.AVATAR,
                          ),
                        ),
                        boxShadow: AppColors.AVATAR_DROP_SHADOW,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
