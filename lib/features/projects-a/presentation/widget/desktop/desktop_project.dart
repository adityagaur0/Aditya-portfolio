import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopHeadlineProjects extends StatelessWidget {
  const DesktopHeadlineProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          project_list_tile(
            image: "assets/images/projects/icansee.webp",
            projectTitle: "ICANSEE",
            skills:
                "Flutter, BLoC, Dio, Google ml kit, Tflite_v2, Yolo,Google Gemini Api",
          ),
          SizedBox(width: 20.h),
          project_list_tile(
            image: "assets/images/intro/amazon-clone.webp",
            projectTitle: "Amazon Clone",
            skills:
                "NodeJs, Express, Mongoose, Next.js 13, Next Auth, React Hook Form, Typescript, Tailwind CSS",
          ),
          SizedBox(width: 20.h),
          project_list_tile(
            image: "assets/images/intro/spotify-clone.webp",
            projectTitle: "Spotify Clone",
            skills:
                "NodeJs, Express, Mongoose, Next.js 13, Next Auth, React Hook Form, Typescript, Tailwind CSS",
          ),
          SizedBox(width: 20.h),
          project_list_tile(
            image: "assets/images/intro/dalle-clone.webp",
            projectTitle: "Dalle Clone",
            skills:
                "NodeJs, Express, Mongoose, Next.js 13, Next Auth, React Hook Form, Typescript, Tailwind CSS",
          ),
        ],
      ),
    );
  }
}

class project_list_tile extends StatelessWidget {
  project_list_tile({
    required this.image,
    required this.projectTitle,
    required this.skills,
    super.key,
  });
  String image;
  String projectTitle;
  String skills;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // margin: EdgeInsets.only(right: 15),
        // width: 200.h,
        // width: double.infinity,
        height: 250.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(projectTitle,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.h,
                      fontWeight: FontWeight.w900)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(skills,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 11.h,
                    fontWeight: FontWeight.normal,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
