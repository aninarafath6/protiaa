import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppColors {
  static const BG_1 = Color(0xff3b455b);
  static const BG_2 = Color(0xff293145);
  static const BG_3 = Color(0xff21293d);
  static const AVATAR_BORDER_COLOR = Color(0xFF7E788A);
  static const INPUT_BORDER_COLOR = Color(0xff808aa0);

// gradient colors

  static const BACKGROUND_GRADIENT = LinearGradient(
    colors: [BG_1, BG_2, BG_3],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.1, 0.5, 0.9],
  );
  // ignore: non_constant_identifier_names
  static final AVATAR_DROP_SHADOW = <BoxShadow>[
    BoxShadow(
      blurRadius: 9,
      color: Color(0xA1292A37),
      offset: Offset(1, 8),
    ),
    BoxShadow(
      blurRadius: 9,
      color: Color(0x45666C7E),
      offset: Offset(-1, -8),
    ),
  ];
}
