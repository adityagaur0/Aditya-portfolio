import 'dart:convert';

import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class WimpDesktopWgt extends StatefulWidget {
  const WimpDesktopWgt({super.key});

  @override
  State<WimpDesktopWgt> createState() => _WimpDesktopWgtState();
}

class _WimpDesktopWgtState extends State<WimpDesktopWgt> {
  List<dynamic> repositories = [];
  bool isLoading = true;
  Future<void> fetchRepositories() async {
    final String token =
        "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";
    final response = await http.get(
      Uri.https('api.github.com', '/user/starred'),
      headers: {'Authorization': 'token $token'},
    );

    if (response.statusCode == 200) {
      setState(() {
        repositories = json.decode(response.body);
        isLoading = false;
      });
    } else {
      // Handle error
      print('Failed to load repositories');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchRepositories();
  }

  @override
  Widget build(BuildContext context) {
    // heading("What I Know"),
    // SizedBox(
    //   height: 20.h,
    // ),
    var mediaquery = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading("What I Know"),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      width: 15.h,
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
                      width: 15.h,
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
                      width: 15.h,
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
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: 5.h, top: 10.h, bottom: 5.h),
            margin: EdgeInsets.only(bottom: 20.h, right: 20.h),
            // width: 200.h,
            height: 400.h,
            // height: 280.h,
            // width: 150.h,
            decoration: BoxDecoration(
              color: TColors.secondary,
              // borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "More Projects",
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600,
                    color: Colors.white54,
                  ),
                ),
                SizedBox(height: 15.h),
                isLoading
                    ? Center(child: CircularProgressIndicator())
                    : Expanded(
                        child: ListView.builder(
                          itemCount: repositories.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset(
                                "assets/images/social/github_icon_black.png",
                                height: 14.h,
                                color: Colors.white54,
                              ),
                              title: Text(
                                repositories[index]['name'],
                                style: TextStyle(
                                  fontSize: 10.h,
                                  color: Colors.white54,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white54,
                                size: 10.h,
                              ),
                              subtitle: Text(
                                repositories[index]['description'] ?? '',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 9.h),
                              ),
                              onTap: () {
                                // Handle tap on repository
                              },
                            );
                          },
                        ),
                      ),
                // Wrap the Python and Django containers with Flexible widget

                // Add some space between the title and the names
                // Wrap(
                //   spacing: 8.0, // Space between the items
                //   runSpacing: 8.0, // Space between the rows
                //   children: List.generate(
                //     names.length,
                //     (index) => _buildNameBox(names[index], color[index]),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding heading(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        text,
        // textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 18.0.h,
          fontWeight: FontWeight.w600,
          color: TColors.light,
        ),
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
    var mediaquery = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding:
            EdgeInsets.only(left: 20.h, top: 10.h, right: 20.h, bottom: 20.h),
        margin: EdgeInsets.only(bottom: 20.h),
        // width: 200.h,
        // height: 310.h ,
        // width: double.infinity,
        // height: 280.h,
        // width: 149.h,
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
