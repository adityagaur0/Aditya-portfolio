import 'package:aditya_gaur_portfolio_flutter/features/intro/presentation/widget/desktop/intro_desktop_wgt.dart';
import 'package:aditya_gaur_portfolio_flutter/features/intro/presentation/widget/mobile/intro_mobile_wgt.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const IntroDesktopWidget(),
      tablet: (p0) => const IntroMobileWidget(),
      mobile: (p0) => const IntroMobileWidget(),
    );
  }
}
