import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_images.dart';
import 'package:protiaa_codex/models/media_model.dart';
import 'package:protiaa_codex/views/screens/individual/individual.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.mediaModel,
  }) : super(key: key);
  final MediaModel mediaModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => IndividualPage(
              mediaModel: mediaModel,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 290,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(40),
          gradient: AppColors.Gradient(mediaModel.colors),
          boxShadow: <BoxShadow>[
            shadow(Color(0xB8211A2B), Offset(1, 8)),
            shadow(Color(0x45666C7E), Offset(-1, -8)),
          ],
        ),
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 290,
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
              right: 5,
              top: 0,
              child: Text(
                '#${mediaModel.id}',
                style: TextStyle(
                  fontSize: 110,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.1),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              width: double.infinity,
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
                          fontSize: 26,
                          letterSpacing: .5,
                        ),
                      ),
                      Text(
                        mediaModel.userName,
                        style: TextStyle(
                            color: mediaModel.borderColor.withOpacity(.9)),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: mediaModel.borderColor,
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: mediaModel.shotsNo.toString(),
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
                                  color: mediaModel.borderColor.withOpacity(.9),
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
