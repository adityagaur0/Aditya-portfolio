import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class IntroDesktopWidget extends StatelessWidget {
//   const IntroDesktopWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: const AssetImage("assets/images/intro/bg2.webp"),
//           fit: BoxFit.cover,
//           // opacity: 0.2

//           colorFilter: ColorFilter.mode(
//             Colors.black.withOpacity(0.2),
//             BlendMode.darken,
//           ),
//         ),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         children: [
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
//             padding: const EdgeInsets.all(2),
//             width: 110,
//             height: 110,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: ClipOval(
//               child: Image.asset(
//                 "assets/images/intro/IMG.webp",
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Column(
//             //mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Aditya Kumar Gaur",
//                 style: Theme.of(context).textTheme.headlineLarge,
//               ),
//               Text(
//                 "Software Developer",
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

class IntroDesktopWidget extends StatelessWidget {
  const IntroDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("assets/images/intro/bg2.webp"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.darken,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            padding: const EdgeInsets.all(2),
            width: 110,
            height: 110,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aditya Kumar Gaur",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "Software Developer",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
