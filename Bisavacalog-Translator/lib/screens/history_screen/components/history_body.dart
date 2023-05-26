import 'package:bisavacalog/constants.dart';
import 'package:bisavacalog/models/translate_model.dart';
import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HistoryBody extends StatefulWidget {
  const HistoryBody({super.key});

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody> {
  List<TranslateModel> translateList = TranslateList().translateList;

  String formatTimestamp(DateTime timestamp) {
    final formatter = DateFormat.MMMMd();

    return formatter.format(timestamp);
  }

  @override
  Widget build(BuildContext context) {
    // Sort the list by timestamp in descending order
    translateList.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    return SafeArea(
        child: SingleChildScrollView(
      child: SizedBox(
          height: SizeConfig.safeAreaHeight,
          child: ListView.builder(
              itemBuilder: (context, i) {
                final currentItem = translateList[i];

                final currentDate = currentItem.timestamp;

                // Check if it's the first item or if there is a day difference
                final isFirstItem = i == 0;
                final previousDate =
                    isFirstItem ? null : translateList[i - 1].timestamp;
                final hasDayDifference = previousDate != null &&
                    currentDate.difference(previousDate).inDays != 0;

                if (isFirstItem || hasDayDifference) {
                  final isToday = currentDate.year == today.year &&
                      currentDate.month == today.month &&
                      currentDate.day == today.day;
                  final isYesterday = currentDate.year == today.year &&
                      currentDate.month == today.month &&
                      currentDate.day == today.day - 1;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          isToday
                              ? 'Today'
                              : isYesterday
                                  ? 'Yesterday'
                                  : formatTimestamp(currentDate),
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: kColorPrimary),
                        ),
                      ),
                      TranslateTile(translateData: currentItem),
                    ],
                  );
                } else {
                  return TranslateTile(translateData: currentItem);
                }
              },
              itemCount: translateList.length)

          // ListView.builder(
          //     itemCount: translateList.where((e) => e.isFavourite == true).length,
          //     itemBuilder: (context, i) {
          //       final favouriteList =
          //           translateList.where((e) => e.isFavourite).toList();
          //       final currentData = favouriteList[i];
          //       return TranslateTile(
          //         translateData: currentData,
          //       );
          //     }),
          ),
    ));
  }
}
