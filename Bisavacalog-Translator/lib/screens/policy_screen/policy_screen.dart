import 'package:bisavacalog/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PolicyScreen extends StatelessWidget {
  static String routeName = "/policy";
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            MdiIcons.chevronLeft,
            size: 33,
          ),
          splashRadius: 25,
        ),
        title: const Text(
          'Policy and Guidelines',
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              const TextTitle(title: 'Introduction'),
              const SizedBox(height: 5),
              const TextBody(
                text:
                    "At MACS IT. Girls, we prioritize the privacy and security of our users' personal information. This Privacy Policy outlines how we collect, use, and protect the information you provide when using our Bisavacalog Translator App. By using the App, you agree to the terms described in this Privacy Policy.",
              ),
              const SizedBox(height: 13),
              const TextTitle(title: '1. Information Collection and Use'),
              const SizedBox(height: 5),
              const SubtittledTextBody(
                subTitle: '1.1 Personal Information:',
                textBody:
                    'The App does not require or collect any personally identifiable information (PII) such as your name, address, or contact details. We do not track or store any personal information that could directly identify you.',
              ),
              const SizedBox(height: 5),
              const SubtittledTextBody(
                  subTitle: '1.2. Translated Data:',
                  textBody:
                      'The App may process and store the text data that you input for translation purposes. However, this data is processed locally on your device and does not leave your device or get transmitted to our servers. We do not have access to or collect any of the translated data.'),
              const SizedBox(height: 13),
              const TextTitle(title: '2. Data Storage'),
              const SizedBox(height: 5),
              const SubtittledTextBody(
                  subTitle: '2.1 Local Storage:',
                  textBody:
                      "The App may store the translations you make locally on your device to improve your experience and allow you to access your translation history. This data is stored securely on your device and is not accessible to us."),
              const SizedBox(height: 13),
              const TextTitle(title: '3. Data Sharing'),
              const SizedBox(height: 5),
              const SubtittledTextBody(
                  subTitle: '3.1. Third-Party Services:',
                  textBody:
                      "The App does not share any data with third-party services, including advertisers, marketers, or analytics providers. All translation and related data are processed and stored locally on your device."),
              const SizedBox(height: 13),
              const TextTitle(title: '4. Security'),
              const SizedBox(height: 5),
              const SubtittledTextBody(
                  subTitle: '4.1. Data Protection:',
                  textBody:
                      "We take reasonable measures to safeguard the data collected and processed by the App. We use industry-standard security practices to protect your information from unauthorized access, disclosure, alteration, or destruction."),
              const SizedBox(height: 5),
              const SubtittledTextBody(
                  subTitle: '4.2. No Data Transmission:',
                  textBody:
                      "The App operates entirely offline, and no data is transmitted to our servers or any third-party servers. This ensures that your translations remain private and secure."),
              const SizedBox(height: 13),
              const TextTitle(title: "5. Children's Privacy"),
              const SizedBox(height: 5),
              const TextBody(
                  text:
                      'The App is not intended for use by children under the age of 13. We do not knowingly collect any personal information from children. If we become aware that personal information has been collected from a child under the age of 13, we will take immediate steps to delete that information from our records.'),
              const SizedBox(height: 13),
              const TextTitle(title: 'Changes to This Privacy Policy'),
              const SizedBox(height: 5),
              const TextBody(
                  text:
                      "We reserve the right to modify or update this Privacy Policy at any time. We encourage you to review this policy periodically for any changes. Continued use of the App after changes to the Privacy Policy signifies your acceptance of the revised terms."),
              const SizedBox(height: 13),
              const TextTitle(title: 'Contact Us'),
              const SizedBox(height: 5),
              Text.rich(TextSpan(
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    const TextSpan(
                        text:
                            "If you have any questions, concerns, or suggestions regarding this Privacy Policy or the App's privacy practices, please contact us at "),
                    TextSpan(
                        text: 'macsitgirls@gmail.com',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.blue))
                  ])),
              const SizedBox(height: 5),
              const TextBody(
                  text:
                      "By using the App, you acknowledge that you have read, understood, and agreed to the terms of this Privacy Policy."),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class SubtittledTextBody extends StatelessWidget {
  final String subTitle;
  final String textBody;
  const SubtittledTextBody({
    required this.subTitle,
    required this.textBody,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(children: [
          TextSpan(
              text: subTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 15)),
          const WidgetSpan(
              child: SizedBox(
            width: 5,
          )),
          TextSpan(
              text: textBody, style: Theme.of(context).textTheme.bodySmall!)
        ]));
  }
}

class TextBody extends StatelessWidget {
  final String text;
  const TextBody({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.justify,
    );
  }
}

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleSmall);
  }
}
