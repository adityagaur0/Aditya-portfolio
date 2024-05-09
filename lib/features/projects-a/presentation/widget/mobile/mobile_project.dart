import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileHeadlineProjects extends StatelessWidget {
  const MobileHeadlineProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          project_list_tile(
            image: "assets/images/projects/icansee.webp",
            projectTitle: "ICANSEE",
            skills:
                "Flutter, BLoC, Dio, Google ml kit, Tflite_v2, Yolo,Google Gemini Api",
          ),
          const SizedBox(height: 20),
          project_list_tile(
            image: "assets/images/intro/amazon-clone.webp",
            projectTitle: "Amazon Clone",
            skills:
                "NodeJs, Express, Mongoose, Next.js 13, Next Auth, React Hook Form, Typescript, Tailwind CSS",
          ),
          const SizedBox(height: 20),
          project_list_tile(
            image: "assets/images/intro/spotify-clone.webp",
            projectTitle: "Spotify Clone",
            skills:
                "NodeJs, Express, Mongoose, Next.js 13, Next Auth, React Hook Form, Typescript, Tailwind CSS",
          ),
          const SizedBox(height: 20),
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
    return Container(
      // margin: EdgeInsets.only(right: 20),
      // width: 270.h,
      // height: 250.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: AspectRatio(
              aspectRatio: 2.0,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(projectTitle,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.h,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(skills,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 15.h,
                    fontWeight: FontWeight.normal)),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
