import 'package:aditya_gaur_portfolio_flutter/features/projects-a/presentation/widget/desktop/desktop_project.dart';
import 'package:aditya_gaur_portfolio_flutter/features/projects-a/presentation/widget/mobile/mobile_project.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeadlineProjects extends StatelessWidget {
  const HeadlineProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const DesktopHeadlineProjects(),
      tablet: (p0) => const MobileHeadlineProjects(),
      mobile: (p0) => const MobileHeadlineProjects(),
    );
  }
}
