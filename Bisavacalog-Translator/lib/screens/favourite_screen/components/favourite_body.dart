import 'package:bisavacalog/models/translate_model.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';

class FavouriteBody extends StatefulWidget {
  const FavouriteBody({super.key});

  @override
  State<FavouriteBody> createState() => _FavouriteBodyState();
}

class _FavouriteBodyState extends State<FavouriteBody> {
  List translateList = TranslateList().translateList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: SizedBox(
        height: SizeConfig.safeAreaHeight,
        child: ListView.builder(
            itemCount: translateList.where((e) => e.isFavourite == true).length,
            itemBuilder: (context, i) {
              final favouriteList =
                  translateList.where((e) => e.isFavourite).toList();
              final currentData = favouriteList[i];
              return TranslateTile(
                translateData: currentData,
              );
            }),
      ),
    ));
  }
}
