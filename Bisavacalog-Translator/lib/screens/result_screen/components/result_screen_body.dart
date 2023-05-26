import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/models/translate_model.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    TranslateModel data = TranslateList().translateList[0];
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: SizeConfig.safeAreaHeight,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              child: ResultWidget(
                  dataLanguage: data.requestLanguage, data: data.request),
            ),
            SizedBox(
              height: 5,
              width: SizeConfig.screenWidth * .6,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: kColorPrimary,
                      borderRadius: BorderRadius.circular(25))),
            ),
            Expanded(
              child: ResultWidget(
                dataLanguage: data.resultLanguage,
                data: data.result,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class ResultWidget extends StatelessWidget {
  final String data, dataLanguage;
  const ResultWidget({
    super.key,
    required this.data,
    required this.dataLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dataLanguage,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: kColorPrimary,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              MdiIcons.volumeHigh,
                              size: 30,
                              color: kColorPrimary,
                            )),
                        IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(
                              MdiIcons.contentCopy,
                              size: 30,
                              color: kColorPrimary,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              data,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: kColorSecondary, fontSize: 30),
            )
          ]),
    );
  }
}
