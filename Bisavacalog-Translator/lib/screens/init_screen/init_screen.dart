import 'package:bisavacalog/components/rating_dialog.dart';
import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/screens/init_screen/components/head.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:share/share.dart';

import 'components/mainbutton.dart';

class InitialScreen extends StatelessWidget {
  static String routeName = "/init";
  const InitialScreen({super.key});
  final String assetName = 'assets/images/Layer 2.svg';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Head(),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Bisavacalog Translator',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge),
              MainButton(
                onPressed: () => Navigator.pushNamed(context, '/home'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SecondaryButton(
                    icon: MdiIcons.star,
                    label: 'Rate',
                    onPressed: () => showRatingDialog(context),
                  ),
                  SecondaryButton(
                    icon: MdiIcons.shareVariant,
                    label: 'Share',
                    onPressed: () => Share.share(
                        'https://play.google.com/store/apps/details?id=com.bisavacalog&hl=en'),
                  ),
                  SecondaryButton(
                    icon: MdiIcons.shieldSearch,
                    label: 'Policies',
                    onPressed: () => Navigator.pushNamed(context, '/policy'),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  const SecondaryButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 56,
          height: 56,
          child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        24), // Set the desired border radius
                  ),
                  backgroundColor: kColorSecondary1),
              child: Icon(
                icon,
                color: kColorSecondary,
              )),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}

class MyClipper extends CustomClipper<RRect> {
  @override
  RRect getClip(Size size) {
    return RRect.fromLTRBR(0, 0, 0, 0, Radius.zero);
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()..color = Colors.blue;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => false;
}
