import 'package:bisavacalog/constants.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

_rateAndReviewApp() {}

showRatingDialog(BuildContext context) {
  final _dialog = RatingDialog(
    initialRating: 5.0,
    starSize: 30,
    starColor: kColorPrimary,

    // your app's name?
    title: const Text(
      'Rate Bisavacalog',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    // encourage your user to leave a high rating?
    message: const Text(
      'If you enjoy using our app, would you mind rating us on PlayStore?',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15),
    ),
    // your app's logo?
    image: Image.asset(
      'assets/images/1024.png',
      width: 100,
      height: 100,
    ),
    submitButtonText: 'Submit',
    // commentHint: 'Set your custom comment hint',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');

      // TODO: add your own logic
      if (response.rating < 3.0) {
        // send their comments to your email or anywhere you wish
        // ask the user to contact you instead of leaving a bad review
      } else {
        _rateAndReviewApp();
      }
    },
  );

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: true, // set to false if you want to force a rating
    builder: (context) => _dialog,
  );
}
