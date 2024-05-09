import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'dart:js' as js;

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: TColors.primary,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SafeArea(
            top: true,
            left: false,
            bottom: false,
            right: false,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white54,
                    )),
              ),
            ),
          ),
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
                  DrawerListTile3(
                    image: "assets/images/icon/home.png",
                    title: "Home",
                    // svgSrc:  "assets/icons/menu_dashboard\.svg",
                    press: () {},
                  ),
                  DrawerListTile3(
                    image: "assets/images/icon/about.png",
                    title: "About",
                    // svgSrc:  "assets/icons/menu_dashboard\.svg",
                    press: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Socials",
                    style: TextStyle(
                      fontSize: 15.h,
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
                  SizedBox(
                    height: 10.h,
                  ),
                  DrawerListTile(
                    image: "assets/images/social/linkedin.png",
                    title: "LinkedIn",
                    color: const Color.fromRGBO(2, 119, 181, 1),
                    press: () async {
                      const url =
                          'https://www.linkedin.com/in/adityakumargaur0/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DrawerListTile(
                    image: "assets/images/social/leetcode.png",
                    title: "Leetcode",
                    color: const Color.fromARGB(188, 254, 165, 31),
                    press: () async {
                      const url = 'https://leetcode.com/u/adityakumargaur0/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DrawerListTile(
                    image: "assets/images/social/overflow.png",
                    title: "Stack overflow",
                    color: const Color.fromRGBO(247, 127, 0, 1),
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
                  SizedBox(
                    height: 10.h,
                  ),
                  DrawerListTile(
                    image: "assets/images/social/twitter.png",
                    title: "X",
                    color: Colors.white54,
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
      ),
    );
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
      leading: Image.asset(
        image,
        height: 18.h,
        fit: BoxFit.cover,
        color: color,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
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
      leading: Image.asset(
        image,
        height: 20.h,
        fit: BoxFit.cover,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
