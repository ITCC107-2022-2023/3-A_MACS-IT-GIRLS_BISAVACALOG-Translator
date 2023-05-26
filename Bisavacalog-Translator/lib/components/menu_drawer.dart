import 'package:bisavacalog/components/rating_dialog.dart';
import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:share/share.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: SizeConfig.screenWidth * 0.7,
      child: Material(
        color: kColorSecondary2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DrawerMenuButton(
                  iconData: MdiIcons.home,
                  menuTitle: 'Home',
                  isActive: true,
                  onPressed: () {},
                ),
                DrawerMenuButton(
                    iconData: MdiIcons.history,
                    menuTitle: 'History',
                    isActive: false,
                    onPressed: () => Navigator.pushNamed(context, '/history')),
                DrawerMenuButton(
                    iconData: MdiIcons.cardsHeart,
                    menuTitle: 'Favourite',
                    isActive: false,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/favourite')),
                DrawerMenuButton(
                    iconData: MdiIcons.shareVariant,
                    menuTitle: 'Share',
                    isActive: false,
                    onPressed: () => Share.share(
                        'https://play.google.com/store/apps/details?id=com.bisavacalog&hl=en')),
                DrawerMenuButton(
                    iconData: MdiIcons.star,
                    menuTitle: 'Rate Us',
                    isActive: false,
                    onPressed: () {
                      showRatingDialog(context);
                    }),
                DrawerMenuButton(
                    iconData: MdiIcons.helpCircle,
                    menuTitle: 'How To Use',
                    isActive: false,
                    onPressed: () {}),
                DrawerMenuButton(
                    iconData: MdiIcons.commentQuote,
                    menuTitle: 'Feedback',
                    isActive: false,
                    onPressed: () => Navigator.pushNamed(context, '/feedback')),
                DrawerMenuButton(
                    iconData: MdiIcons.shieldLock,
                    menuTitle: 'Privacy',
                    isActive: false,
                    onPressed: () => Navigator.pushNamed(context, '/policy')),
              ]),
        ),
      ),
    );
  }
}

class DrawerMenuButton extends StatelessWidget {
  final IconData iconData;
  final String menuTitle;
  final bool isActive;
  final VoidCallback onPressed;

  const DrawerMenuButton({
    required this.iconData,
    required this.menuTitle,
    required this.isActive,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      child: Container(
        color: isActive ? kColorPrimary : null,
        child: TextButton(
            onPressed: onPressed,
            child: Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    size: 30,
                    color: isActive ? kColorSecondary2 : null,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(menuTitle,
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: isActive ? kColorSecondary2 : null))
                ],
              ),
            )),
      ),
    );
  }
}
