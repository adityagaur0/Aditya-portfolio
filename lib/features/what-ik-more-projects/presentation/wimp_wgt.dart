import 'package:aditya_gaur_portfolio_flutter/features/what-ik-more-projects/presentation/desktop/wimp_desktop_wgt.dart';
import 'package:aditya_gaur_portfolio_flutter/features/what-ik-more-projects/presentation/mobile/wimp_mobile_wgt.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WimpWgt extends StatelessWidget {
  const WimpWgt({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const WimpDesktopWgt(),
      tablet: (p0) => const WimpMobileWgt(),
      mobile: (p0) => const WimpMobileWgt(),
    );
  }
}
