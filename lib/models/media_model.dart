import 'package:flutter/widgets.dart';
import 'package:protiaa_codex/models/post_model.dart';

class MediaModel {
  final int id;
  final String name;
  final int shotsNo;
  final String userName;
  final String icon;
  final List<Color> colors;
  final Color borderColor;
  final String likes;
  final String fans;
  final List<PostModel>? posts;

  MediaModel({
    required this.likes,
    required this.fans,
    required this.id,
    required this.icon,
    required this.name,
    required this.shotsNo,
    required this.userName,
    required this.colors,
    required this.borderColor,
    this.posts,
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
    borderColor: Color(0xffd14f83),
    fans: '250k',
    likes: '66M',
    posts: [
      PostModel(
        id: '1',
        title: 'How to get creative with your new',
        date: '4 may, 2021',
        likes: '225',
        image: 'assets/images/posts/post1.png',
      ),
      PostModel(
        id: '2',
        title: 'web design templates',
        date: '3 march, 2021',
        likes: '110',
        image: 'assets/images/posts/post2.jpg',
      ),
      PostModel(
        id: '3',
        title: 'simple ui inspiration',
        date: '4 march, 2021',
        likes: '110',
        image: 'assets/images/posts/post3.png',
      ),
      PostModel(
        id: '3',
        title: 'modern ui inspiration',
        date: '8 april, 2021',
        likes: '110',
        image: 'assets/images/posts/post4.jpg',
      ),
    ],
  ),
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
    fans: '125k',
    likes: '999k',
    posts: [
      PostModel(
        id: '1',
        title: 'How to get creative with your new',
        date: '4 may, 2021',
        likes: '225',
        image: 'assets/images/posts/post5.jpg',
      ),
      PostModel(
        id: '2',
        title: 'web design templates',
        date: '3 march, 2021',
        likes: '110',
        image: 'assets/images/posts/post6.png',
      ),
      PostModel(
        id: '3',
        title: 'simple ui inspiration',
        date: '4 march, 2021',
        likes: '110',
        image: 'assets/images/posts/post3.png',
      ),
      PostModel(
        id: '3',
        title: 'modern ui inspiration',
        date: '8 april, 2021',
        likes: '110',
        image: 'assets/images/posts/post4.jpg',
      ),
    ],
  ),
];
