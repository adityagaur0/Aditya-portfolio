import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () async {
            final Uri launchUri = Uri(
              scheme: 'tel',
              path: "9910872670",
            );
            await launchUrl(launchUri);
          },
          // style: ElevatedButton.styleFrom(
          //     backgroundColor: const Color.fromRGBO(30, 116, 72, 1.0)),
          child: const Row(
            children: [
              Text(
                'Contact Me',
                style: TextStyle(color: TColors.textSecondary),
              ),
              // SizedBox(
              //   width: 5,
              // ),
              // Icon(
              //   Icons.person,
              //   size: 20,
              //   color: TColors.textSecondary,
              // ),
            ],
          ),
        ),
        const SizedBox(
          width: 40,
        ),
      ],
    );
  }
}
