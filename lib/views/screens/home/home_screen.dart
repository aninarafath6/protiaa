import 'package:flutter/material.dart';
import 'package:protiaa_codex/constants/app_colors.dart';

import 'package:protiaa_codex/constants/app_sizes.dart';
import 'package:protiaa_codex/views/widgets/custom_app_bar.dart';
import 'package:protiaa_codex/views/widgets/noiseContainer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BG_3,
      body: NoiseContainer(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.DEFAULT_PADDING_HOR,
              vertical: AppSizes.DEFAULT_PADDING_VERT,
            ),
            child: Column(
              children: <Widget>[
                CustomAppBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
