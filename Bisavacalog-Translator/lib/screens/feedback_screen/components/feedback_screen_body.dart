import 'package:bisavacalog/components/default_button.dart';
import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/screens/feedback_screen/components/emoticon_buttons.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';

class FeedbackBody extends StatelessWidget {
  const FeedbackBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: SizeConfig.safeAreaHeight,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/feedback_illustration.png',
                colorBlendMode: BlendMode.colorBurn,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: kColorSecondary1,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Please rate your experiance:',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: kColorSecondary),
                            ),
                            EmoticonButtons(),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Additional Comments:',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: kColorSecondary),
                            ),
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  color: kColorSecondary2,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Scrollbar(
                                controller: scrollController,
                                child: Column(
                                  children: [
                                    TextField(
                                      expands: false,
                                      maxLines: 4,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        DefaultButton(
                          label: 'Submit',
                          onPress: () {},
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
