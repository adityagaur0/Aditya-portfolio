import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:aditya_gaur_portfolio_flutter/features/drawer/side_drawer_desktop.dart';
import 'package:aditya_gaur_portfolio_flutter/features/drawer/side_drawer_mobile.dart';
import 'package:aditya_gaur_portfolio_flutter/features/intro/presentation/widget/intro_widget.dart';
import 'package:aditya_gaur_portfolio_flutter/features/navbar/presentation/navbar_widgets.dart';
import 'package:aditya_gaur_portfolio_flutter/features/projects-a/presentation/widget/headline_projects.dart';
import 'package:aditya_gaur_portfolio_flutter/features/what-ik-more-projects/presentation/wimp_wgt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: TColors.primary,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NavBarWidgets(),
            if (DeviceScreenType.desktop == deviceType)
              const Expanded(
                child: SideMenuDesktop(),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 4,
              child: home_page_wgt(),
            ),
          ],
        ),
      ),
    );
  }
}

class home_page_wgt extends StatelessWidget {
  const home_page_wgt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: (DeviceScreenType.desktop == deviceType)
          ? const EdgeInsets.only(left: 10, right: 20)
          : const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const NavBarWidgets(),
          const SizedBox(
            height: 20,
          ),
          // Lottie.asset('assets/lottie/cateye.json', height: 150),
          const IntroWidget(),
          SizedBox(
            height: 30.h,
          ),
          heading("Projects"),
          SizedBox(
            height: 20.h,
          ),
          const HeadlineProjects(),
          SizedBox(
            height: 30.h,
          ),
          const WimpWgt(),
          SizedBox(
            height: 10.h,
          ),

          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }

  Padding heading(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0.h,
          fontWeight: FontWeight.w600,
          color: TColors.light,
        ),
      ),
    );
  }
}
