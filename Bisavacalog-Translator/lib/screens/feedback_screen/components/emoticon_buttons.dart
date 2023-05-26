import 'package:bisavacalog/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmoticonButtons extends StatefulWidget {
  const EmoticonButtons({super.key});

  @override
  State<EmoticonButtons> createState() => _EmoticonButtonsState();
}

class _EmoticonButtonsState extends State<EmoticonButtons> {
  int? selectedEmoticon;

  void onSelectEmoticon(i) {
    setState(() {
      selectedEmoticon = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(),
      color: kColorSecondary1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              alignment: Alignment.center,
              onPressed: () => onSelectEmoticon(0),
              icon: Icon(
                selectedEmoticon == 0
                    ? MdiIcons.emoticonAngry
                    : MdiIcons.emoticonAngryOutline,
                size: 40,
                color: kColorPrimary,
              )),
          IconButton(
              onPressed: () => onSelectEmoticon(1),
              icon: Icon(
                selectedEmoticon == 1
                    ? MdiIcons.emoticonSad
                    : MdiIcons.emoticonSadOutline,
                size: 40,
                color: kColorPrimary,
              )),
          IconButton(
              onPressed: () => onSelectEmoticon(2),
              icon: Icon(
                selectedEmoticon == 2
                    ? MdiIcons.emoticonNeutral
                    : MdiIcons.emoticonNeutralOutline,
                size: 40,
                color: kColorPrimary,
              )),
          IconButton(
              onPressed: () => onSelectEmoticon(3),
              icon: Icon(
                selectedEmoticon == 3
                    ? MdiIcons.emoticonHappy
                    : MdiIcons.emoticonHappyOutline,
                size: 40,
                color: kColorPrimary,
              )),
          IconButton(
              onPressed: () => onSelectEmoticon(4),
              icon: Icon(
                selectedEmoticon == 4
                    ? MdiIcons.emoticon
                    : MdiIcons.emoticonOutline,
                size: 40,
                color: kColorPrimary,
              )),
        ],
      ),
    );
  }
}
