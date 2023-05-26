import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/screens/result_screen/components/result_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'components/heart_button.dart';

class ResultScreen extends StatelessWidget {
  static String routeName = '/result';
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorSecondary1,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            MdiIcons.chevronLeft,
            size: 33,
          ),
          splashRadius: 25,
        ),
        title: const Text(
          'Result',
        ),
        actions: [HeartButton()],
      ),
      body: ResultBody(),
    );
  }
}
