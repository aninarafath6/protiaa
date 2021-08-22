import 'package:flutter/material.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              decoration: avatarBoxDecoration(),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        TextField(
          cursorColor: Colors.white,
          decoration: inputDecoration(),
        ),
      ],
    );
  }

  InputDecoration inputDecoration() {
    return InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          enabledBorder: inputBorderDecoration(),
          focusedBorder: inputBorderDecoration(),
          prefixIcon: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          hintText: 'search...',
          hintStyle: TextStyle(
            color: AppColors.INPUT_BORDER_COLOR,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        );
  }

  BoxDecoration avatarBoxDecoration() {
    return BoxDecoration(
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
            );
  }

  OutlineInputBorder inputBorderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        25,
      ),
      borderSide: BorderSide(
        color: AppColors.INPUT_BORDER_COLOR,
        width: 1.5,
      ),
    );
  }
}
