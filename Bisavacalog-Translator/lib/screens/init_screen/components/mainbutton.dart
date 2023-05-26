import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  const MainButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * .9,
      height: 82,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 7,
            padding: EdgeInsets.zero, // Set padding to EdgeInsets.zero
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(25), // Set the desired border radius
            )),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                'Translate now',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.zero,
                height: 82,
                width: 82,
                decoration: BoxDecoration(
                    color: kColorPrimary1,
                    borderRadius: BorderRadius.circular(25)),
                child: Icon(
                  MdiIcons.chevronRight,
                  size: 72,
                  color: kColorWhite1,
                )),
          ],
        ),
      ),
    );
  }
}
