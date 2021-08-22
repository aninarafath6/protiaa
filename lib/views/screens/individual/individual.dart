import 'package:flutter/material.dart';

import 'package:protiaa_codex/models/media_model.dart';
import 'package:protiaa_codex/views/screens/individual/individual_app_bar.dart';
import 'package:protiaa_codex/views/widgets/noiseContainer_widget.dart';

class IndividualPage extends StatelessWidget {
  const IndividualPage({Key? key, required this.mediaModel}) : super(key: key);
  final MediaModel mediaModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoiseContainer(
        body: Column(
          children: <Widget>[
            IndividualPageAppBar(mediaModel: mediaModel),
          ],
        ),
      ),
    );
  }
}