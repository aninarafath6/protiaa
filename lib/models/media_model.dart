import 'package:flutter/widgets.dart';

class MediaModel {
  final int id;
  final String name;
  final int shotsNo;
  final String userName;
  final String icon;
  final List<Color> colors;
  final Color borderColor;

  MediaModel({
    required this.id,
    required this.icon,
    required this.name,
    required this.shotsNo,
    required this.userName,
    required this.colors,
    required this.borderColor,
  });
}

var media = <MediaModel>[
  MediaModel(
      id: 1,
      name: 'dribble',
      shotsNo: 224,
      userName: '@anin_arafath',
      icon: 'assets/images/svgs/dribbble-icon.svg',
      colors: [
        Color(0xB0FA8275),
        Color(0xffdc486b),
        Color(0xff913a68),
      ],
      borderColor: Color(0xffd14f83),),
  MediaModel(
    id: 2,
    name: 'behance',
    shotsNo: 187,
    userName: '@anin_arafath',
    icon: 'assets/images/svgs/behance.svg',
    colors: [
      Color(0xff56c9e5),
      Color(0xff1f74e9),
      Color(0xff183169),
    ],
    borderColor: Color(0xff2f84e8),
  ),
];
