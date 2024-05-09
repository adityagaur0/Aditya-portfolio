import 'package:aditya_gaur_portfolio_flutter/features/navbar/presentation/widgets/desktop/navbar_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/mobile/navbar_mobile.dart';

class NavBarWidgets extends StatelessWidget {
  const NavBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const NavBarDesktop(),
      tablet: (p0) => const NavBarMobile(),
      mobile: (p0) => const NavBarMobile(),
    );
  }
}
