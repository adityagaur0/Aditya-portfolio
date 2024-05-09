import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroMobileWidget extends StatelessWidget {
  const IntroMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/intro/bg.webp"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // ClipRRect(
          //   // borderRadius: BorderRadius.circular(10),
          //   child: Image(
          //     image: AssetImage("assets/images/intro/IMG.webp"),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            padding: const EdgeInsets.all(2),
            width: 110.w,
            height: 110.w,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                "assets/images/intro/IMG.webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aditya Kumar Gaur",
                  style: TextStyle(
                      fontSize: 18.h,
                      fontWeight: FontWeight.w600,
                      color: TColors.light),
                ),
                Text(
                  "Software Developer",
                  style: TextStyle(
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                      color: TColors.light),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
