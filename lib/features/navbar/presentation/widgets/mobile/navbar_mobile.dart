import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () async {
            final Uri launchUri = Uri(
              scheme: 'tel',
              path: '9910872670',
            );
            await launchUrl(launchUri);
          },
          // style: ElevatedButton.styleFrom(
          //     backgroundColor: const Color.fromRGBO(30, 116, 72, 1.0)),
          child: Row(
            children: [
              const Text(
                'Contact Me',
                style: TextStyle(color: TColors.textSecondary),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10.h,
        ),
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: TColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
