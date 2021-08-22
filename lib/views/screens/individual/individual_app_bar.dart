import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_images.dart';
import 'package:protiaa_codex/constants/app_sizes.dart';
import 'package:protiaa_codex/models/media_model.dart';

class IndividualPageAppBar extends StatelessWidget {
  const IndividualPageAppBar({
    Key? key,
    required this.mediaModel,
  }) : super(key: key);
  final MediaModel mediaModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        gradient: AppColors.Gradient(mediaModel.colors),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        boxShadow: AppColors.AVATAR_DROP_SHADOW,
      ),
      child: Center(
        child: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Opacity(
                  opacity: 0.06,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      AppImages.NOISE_BACKGROUND,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(.4),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 5,
                top: 10,
                child: Text(
                  '#${mediaModel.id}',
                  style: TextStyle(
                    fontSize: 140,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    vertical: AppSizes.DEFAULT_PADDING_VERT),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          mediaModel.icon,
                          width: 95,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          mediaModel.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: .5,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DSpan(mediaModel.shotsNo.toString(), 'shots'),
                          DSpan(mediaModel.likes, 'likes'),
                          DSpan(mediaModel.fans, 'fans'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column DSpan(count, name) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white54,
          ),
        ),
      ],
    );
  }
}
