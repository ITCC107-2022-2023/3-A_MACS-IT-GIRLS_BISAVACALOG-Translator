import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  const DefaultButton({
    required this.onPress,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: SizeConfig.screenWidth,
      child: SizedBox(
        height: 62,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            onPressed: onPress,
            child: Text(
              label,
              style: Theme.of(context).textTheme.displayMedium,
            )),
      ),
    );
  }
}
