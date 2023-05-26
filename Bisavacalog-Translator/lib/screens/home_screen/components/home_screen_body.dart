import 'package:bisavacalog/components/default_button.dart';
import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/screens/home_screen/components/button_language.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      constraints: BoxConstraints(maxHeight: SizeConfig.screenHeight),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                  color: kColorSecondary1,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      maxLines: null,
                      keyboardType: TextInputType.text,
                      style: Theme.of(context).textTheme.displayLarge,
                      decoration: InputDecoration(
                          hintText: 'Type Here...',
                          hintStyle: Theme.of(context).textTheme.displayLarge,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      // textInputAction: TextInputAction.newline,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 4,
                            shape: CircleBorder(),
                            backgroundColor: kColorSecondary),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            MdiIcons.microphone,
                            size: 40,
                            color: kColorWhite1,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonLanguage(language: 'Chavacano'),
                  IconButton(
                      splashRadius: 20,
                      //splashColor: kColorSecondary,
                      onPressed: () {},
                      icon: Icon(
                        MdiIcons.swapHorizontal,
                        color: kColorSecondary,
                        semanticLabel: 'Language Switch Button',
                        size: 25,
                      )),
                  ButtonLanguage(language: 'Tagalog'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DefaultButton(
            label: 'Translate',
            onPress: () => Navigator.pushNamed(context, '/result'),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
