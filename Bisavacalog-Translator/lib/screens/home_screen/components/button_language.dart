import 'package:bisavacalog/constants.dart';
import 'package:flutter/material.dart';

class ButtonLanguage extends StatelessWidget {
  final String language;
  const ButtonLanguage({
    required this.language,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 49,
        width: 140,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: kColorSecondary),
            onPressed: () {},
            child: Text(
              language,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 15),
            )));
  }
}
