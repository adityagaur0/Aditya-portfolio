import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenuDesktop extends StatelessWidget {
  const SideMenuDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        // ClipRect(
        //   child: Align(
        //     alignment: Alignment.topCenter,
        //     // heightFactor: 1,
        //     child: SizedBox(
        //       height: 80,
        //       child: Lottie.asset('assets/lottie/catsleep.json', height: 150),
        //     ),
        //   ),
        // ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: TColors.secondary,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text("Aditya."),
                DrawerListTile3(
                  image: "assets/images/icon/home.png",
                  title: "Home",
                  press: () {},
                ),
                DrawerListTile3(
                  image: "assets/images/icon/about.png",
                  title: "About",
                  press: () {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Socials",
                  style: TextStyle(
                    fontSize: 14.h,
                    fontWeight: FontWeight.w500,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                DrawerListTile(
                  image: "assets/images/social/github.png",
                  title: "Github",
                  press: () async {
                    const url = 'https://github.com/adityagaur0';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  color: const Color.fromRGBO(42, 157, 143, 1),
                ),
                DrawerListTile(
                  image: "assets/images/social/linkedin.png",
                  title: "LinkedIn",
                  color: const Color.fromRGBO(2, 119, 181, 1),
                  //svgSrc:  "assets/icons/menu_tran.svg",
                  press: () async {
                    const url = 'https://www.linkedin.com/in/adityakumargaur0/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                DrawerListTile(
                  image: "assets/images/social/leetcode.png",
                  title: "Leetcode",
                  color: const Color.fromARGB(188, 254, 165, 31),
                  //svgSrc:  "assets/icons/menu_task.svg",
                  press: () async {
                    const url = 'https://leetcode.com/u/adityakumargaur0/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                DrawerListTile(
                  image: "assets/images/social/overflow.png",
                  title: "Stack overflow",
                  color: const Color.fromRGBO(247, 127, 0, 1),
                  //svgSrc:  "assets/icons/menu_doc.svg",
                  press: () async {
                    const url =
                        'https://stackoverflow.com/users/22863160/aditya-kumar-gaur?tab=profile';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                DrawerListTile(
                  image: "assets/images/social/twitter.png",
                  title: "X",
                  color: Colors.white54,
                  //svgSrc:  "assets/icons/menu_store.svg",
                  press: () async {
                    const url = 'https://twitter.com/Adityagaur24671';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url as Uri)) {
      throw Exception('Could not launch $url');
    }
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      // For selecting those three line once press "Command+D"
      required this.title,
      // required this.svgSrc,
      required this.press,
      required this.color,
      required this.image})
      : super(key: key);

  final String title;
  final String image;
  final Color color;
  //  svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      // horizontalTitleGap: 10.0,
      //   leading: SvgPicture.asset(
      // //    svgSrc,
      //     colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
      //     height: 16,
      //   ),
      leading: Image.asset(
        image,
        height: 18.h,
        fit: BoxFit.cover,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54, fontSize: 12.h),
      ),
    );
  }
}

class DrawerListTile3 extends StatelessWidget {
  const DrawerListTile3(
      {Key? key,
      // For selecting those three line once press "Command+D"
      required this.title,
      // required this.svgSrc,
      required this.press,
      required this.image})
      : super(key: key);

  final String title;
  final String image;
  //  svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      // horizontalTitleGap: 10.0,
      //   leading: SvgPicture.asset(
      // //    svgSrc,
      //     colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
      //     height: 16,
      //   ),
      leading: Image.asset(
        image,
        height: 20.h,
        fit: BoxFit.cover,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54, fontSize: 12.h),
      ),
    );
  }
}
