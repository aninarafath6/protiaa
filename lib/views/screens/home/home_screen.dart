import 'package:flutter/material.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_sizes.dart';
import 'package:protiaa_codex/models/media_model.dart';
import 'package:protiaa_codex/views/widgets/custom_app_bar.dart';
import 'package:protiaa_codex/views/widgets/noiseContainer_widget.dart';

import 'media_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BG_3,
      body: NoiseContainer(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppSizes.DEFAULT_PADDING_HOR,
              right: AppSizes.DEFAULT_PADDING_HOR,
              top: AppSizes.DEFAULT_PADDING_VERT,
            ),
            child: Column(
              children: <Widget>[
                CustomAppBar(),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => ItemCard(
                      mediaModel: media[index],
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 25,
                    ),
                    itemCount: media.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
