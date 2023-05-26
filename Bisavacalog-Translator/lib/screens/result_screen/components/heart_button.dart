import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HeartButton extends StatefulWidget {
  const HeartButton({
    super.key,
  });

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isHeart = false;

  voidOnIconPress() {
    setState(() {
      isHeart = !isHeart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: voidOnIconPress,
        icon: Icon(isHeart ? MdiIcons.cardsHeart : MdiIcons.cardsHeartOutline));
  }
}
