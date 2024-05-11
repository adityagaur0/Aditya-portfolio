import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WimpDesktopWgt extends StatelessWidget {
  const WimpDesktopWgt({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
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

// class wimp_list_tile extends StatelessWidget {
//   wimp_list_tile({
//     required this.text,
//     required this.names,
//     required this.color,
//     super.key,
//   });
//   String text;
//   final List<String> names;
//   final List<Color> color;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
//         // width: 200.h,
//         // width: double.infinity,
//         height: 280.h,
//         // width: 170.h,
//         decoration: BoxDecoration(
//           color: TColors.secondary,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               text,
//               style: TextStyle(
//                 fontSize: 16.h,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white54,
//               ),
//             ),
//             SizedBox(height: 10.h),
//             // Wrap the Python and Django containers with Flexible widget

//             // Add some space between the title and the names
//             Expanded(
//               child: ListView.separated(
//                 separatorBuilder: (context, index) => SizedBox(height: 8.h),
//                 itemCount: names.length,
//                 itemBuilder: (context, index) {
//                   return _buildNameBox(names[index], color[index]);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildNameBox(String name, Color color) {
//     return Container(
//       // margin: const EdgeInsets.only(bottom: 10),
//       padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.h),
//       // Set width equal to the maximum width
//       decoration: BoxDecoration(
//         color: TColors.primary,
//         borderRadius: BorderRadius.circular(5),
//         border: Border.all(
//           color: Colors.white54,
//           width: 1,
//         ),
//       ),
//       child: Text(
//         name,
//         style: TextStyle(
//           fontSize: 12.h,
//           fontWeight: FontWeight.w500,
//           color: Colors.white54,
//         ),
//       ),
//     );
//   }
// }

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
      padding:
          EdgeInsets.only(left: 20.h, top: 10.h, right: 20.h, bottom: 20.h),
      margin: EdgeInsets.only(bottom: 20.h),
      // width: 200.h,
      height: 310.h,
      // width: double.infinity,
      // height: 280.h,
      width: 150.h,
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
          SizedBox(height: 15.h),
          // Wrap the Python and Django containers with Flexible widget

          // Add some space between the title and the names
          Wrap(
            spacing: 8.0, // Space between the items
            runSpacing: 8.0, // Space between the rows
            children: List.generate(
              names.length,
              (index) => _buildNameBox(names[index], color[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNameBox(String name, Color color) {
    return Container(
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
          fontSize: 10.h,
          fontWeight: FontWeight.w500,
          color: Colors.white54,
        ),
      ),
    );
  }
}
