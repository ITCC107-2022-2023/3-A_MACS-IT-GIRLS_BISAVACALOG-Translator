import 'package:bisavacalog/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TranslateModel {
  final DateTime timestamp;
  final String request;
  final String result;
  final String requestLanguage;
  final String resultLanguage;
  final bool isFavourite;
  TranslateModel(
      {required this.timestamp,
      required this.request,
      required this.result,
      required this.requestLanguage,
      required this.resultLanguage,
      required this.isFavourite});
}

DateTime today = DateTime.now();
final yesterday = today.subtract(Duration(days: 1));
final previous = today.subtract(Duration(days: 2));

class TranslateTile extends StatelessWidget {
  final TranslateModel translateData;
  const TranslateTile({
    required this.translateData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          translateData.request,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Text(translateData.result,
            style: Theme.of(context).textTheme.displaySmall),
      ]),
      subtitle: Row(
        children: [
          Text(translateData.requestLanguage,
              style: GoogleFonts.poppins(
                  color: kColorPrimary, fontWeight: FontWeight.w500)),
          Icon(MdiIcons.arrowRightThin),
          Text(
            translateData.resultLanguage,
            style: GoogleFonts.poppins(
                color: kColorPrimary, fontWeight: FontWeight.w500),
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          translateData.isFavourite
              ? MdiIcons.cardsHeart
              : MdiIcons.cardsHeartOutline,
          color: kColorSecondary,
          size: 29,
        ),
      ),
    );
  }
}

class TranslateList {
  List<TranslateModel> translateList = [
    TranslateModel(
        timestamp: today,
        isFavourite: true,
        request: 'ano',
        result: 'unsa',
        requestLanguage: 'Tagalog',
        resultLanguage: 'Bisaya'),
    TranslateModel(
        timestamp: today,
        isFavourite: false,
        request: 'wala na',
        result: 'wa na',
        requestLanguage: 'Tagalog',
        resultLanguage: 'Bisaya'),
    TranslateModel(
        timestamp: yesterday,
        request: 'bakit',
        isFavourite: true,
        result: 'nganu',
        requestLanguage: 'Tagalog',
        resultLanguage: 'Bisaya'),
    TranslateModel(
        timestamp: yesterday,
        isFavourite: false,
        request: 'pananglitan',
        result: 'halimbawa',
        requestLanguage: 'Bisaya',
        resultLanguage: 'Tagalog'),
    TranslateModel(
        timestamp: previous,
        isFavourite: false,
        request: 'gwapa',
        result: 'maganda',
        requestLanguage: 'Bisaya',
        resultLanguage: 'Tagalog'),
    TranslateModel(
        timestamp: previous,
        request: 'tingali',
        isFavourite: true,
        result: 'siguro',
        requestLanguage: 'Bisaya',
        resultLanguage: 'Tagalog'),
    TranslateModel(
        timestamp: today,
        isFavourite: true,
        request: 'bakit',
        result: 'porke',
        requestLanguage: 'Tagalog',
        resultLanguage: 'Chavacano'),
    TranslateModel(
        timestamp: previous,
        request: 'pano',
        result: 'kilaya',
        isFavourite: true,
        requestLanguage: 'Tagalog',
        resultLanguage: 'Chavacano'),
  ];
}
