import 'package:bisavacalog/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class Head extends StatelessWidget {
  const Head({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * .45,
      width: SizeConfig.screenWidth,
      child: ClipRect(
        clipBehavior: Clip.antiAlias,
        child: OverflowBox(
            maxWidth: 600,
            maxHeight: 600,
            alignment: Alignment.bottomCenter,
            child: ClipOval(
              child: Container(
                height: 588,
                width: 588,
                padding: const EdgeInsets.symmetric(horizontal: 100),
                color: kColorPrimary,
                child: SvgPicture.asset(
                  'assets/images/init_header_illustration.svg',
                  clipBehavior: Clip.hardEdge,
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight,
                ),
              ),
            )),
      ),
    );
  }
}
