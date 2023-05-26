import 'package:bisavacalog/screens/history_screen/components/history_body.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HistoryScreen extends StatelessWidget {
  static String routeName = "/history";
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
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
          'History',
        ),
      ),
      body: HistoryBody(),
    );
  }
}
