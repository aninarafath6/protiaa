import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_images.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 290,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(40),
        gradient: AppColors.DRIBBLE_COLOR,
        boxShadow: <BoxShadow>[
          shadow(Color(0xB8211A2B), Offset(1, 8)),
          shadow(Color(0x45666C7E), Offset(-1, -8)),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 5,
            top: 0,
            child: Text(
              '#1',
              style: TextStyle(
                fontSize: 110,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.1),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    SvgPicture.asset(
                      AppImages.DRIBBLE_ICON,
                      width: 95,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'dribbble',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        letterSpacing: .5,
                      ),
                    ),
                    Text(
                      '@anin arafath',
                      style: TextStyle(color: Color(0xFFEB7CAA)),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color(0xffd14f83),
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: '122',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' shots',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.white.withOpacity(
                                  0.3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'add new',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BoxShadow shadow(Color color, Offset offset) {
    return BoxShadow(
      spreadRadius: 2,
      blurRadius: 10,
      color: color,
      offset: offset,
    );
  }
}
