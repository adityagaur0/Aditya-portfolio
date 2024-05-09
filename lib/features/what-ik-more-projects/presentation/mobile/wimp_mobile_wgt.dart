import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WimpMobileWgt extends StatelessWidget {
  const WimpMobileWgt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          // wimp_list_tile(
          //   text: 'Frontend',
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // wimp_list_tile(
          //   text: 'Backend',
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // wimp_list_tile(
          //   text: 'Database',
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // wimp_list_tile(
          //   text: 'Devops',
          // )
          wimp_list_tile(
            text: 'Frontend.',
            names: const [
              'Flutter',
              'HTML',
              'CSS',
              'JavaScript',
              'TypeScript',
            ],
            color: [
              Colors.transparent,
              Colors.blueAccent.withOpacity(0.5),
              Colors.green.withOpacity(0.6),
              Colors.transparent,
              const Color.fromARGB(255, 255, 218, 8).withOpacity(0.6)
            ],
          ),
          SizedBox(
            width: 20.h,
          ),
          wimp_list_tile(
            text: 'Backend.',
            names: const ['Flask', 'Node.js', 'Express.js'],
            color: const [
              Colors.blue,
              Colors.green,
              Colors.transparent,
              Colors.yellow
            ],
          ),
          SizedBox(
            width: 20.h,
          ),
          wimp_list_tile(
            text: 'Database.',
            names: const [
              'Firebase',
              'Supabase',
              'MongoDB',
              'Tensorflow',
              'PostgreSQL',
              'MySQL'
            ],
            color: const [
              Colors.transparent,
              Colors.blue,
              Colors.green,
              Colors.transparent,
              Colors.yellow,
              Colors.red
            ],
          ),
          SizedBox(
            width: 20.h,
          ),
          wimp_list_tile(
            text: 'Devops.',
            names: const ['Git', 'Docker', 'AWS'],
            color: const [
              Colors.transparent,
              Colors.blue,
              Colors.green,
              Colors.transparent,
              Colors.yellow
            ],
          ),
        ],
      ),
    );
  }
}

class wimp_list_tile extends StatelessWidget {
  wimp_list_tile({
    required this.text,
    required this.names,
    required this.color,
    super.key,
  });
  String text;
  final List<String> names;
  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      // width: 200.h,
      // width: double.infinity,
      height: 280.h,
      // width: 170.h,
      decoration: BoxDecoration(
        color: TColors.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16.h,
              fontWeight: FontWeight.w600,
              color: Colors.white54,
            ),
          ),
          SizedBox(height: 10.h),
          // Wrap the Python and Django containers with Flexible widget

          // Add some space between the title and the names
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 8.h),
              itemCount: names.length,
              itemBuilder: (context, index) {
                return _buildNameBox(names[index], color[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNameBox(String name, Color color) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.h),
      // Set width equal to the maximum width
      decoration: BoxDecoration(
        color: TColors.primary,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.white54,
          width: 1,
        ),
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 12.h,
          fontWeight: FontWeight.w500,
          color: Colors.white54,
        ),
      ),
    );
  }
}


// class wimp_list_tile extends StatelessWidget {
//   wimp_list_tile({
//     required this.text,
//     super.key,
//   });
//   String text;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 15, top: 20),
//       // width: 200.h,
//       // width: double.infinity,
//       height: 280.h,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: TColors.secondary,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 16.h,
//               fontWeight: FontWeight.w600,
//               color: Colors.white54,
//             ),
//           ),
//           // Padding(
//           //   padding: EdgeInsets.symmetric(horizontal: 20),
//           //   child: Text(projectTitle,
//           //       style: TextStyle(
//           //           color: Colors.black,
//           //           fontSize: 13.h,
//           //           fontWeight: FontWeight.w900)),
//           // ),
//           // Padding(
//           //   padding: EdgeInsets.symmetric(horizontal: 20),
//           //   child: Text(skills,
//           //       textAlign: TextAlign.start,
//           //       style: TextStyle(
//           //         color: Colors.black.withOpacity(0.8),
//           //         fontSize: 11.h,
//           //         fontWeight: FontWeight.normal,
//           //       )),
//           // ),
//         ],
//       ),
//     );
//   }
// }
