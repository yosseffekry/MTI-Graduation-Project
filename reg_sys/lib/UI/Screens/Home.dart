import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../Logic/Navbar/cubit/navbar_cubit.dart';
import '../../Shared/Colors.dart';
import '../Componants/CourseCard.dart';
import '../Componants/DaysCard.dart';
import '../Componants/LectureItems.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavbarCubit, NavbarState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Container(
                    //   width: 40,
                    //   height: 40,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(15),
                    //     border: Border.all(width: 1, color: Colors.white),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.blueGrey.withOpacity(0.2),
                    //         blurRadius: 12,
                    //         spreadRadius: 8,
                    //       )
                    //     ],
                    //     // image: DecorationImage(
                    //     //   fit: BoxFit.cover,
                    //     //   image: NetworkImage(
                    //     //       "https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80"),
                    //     // ),
                    //   ),
                    // ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Yossef",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 263),
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(CupertinoIcons.profile_circled),
                    //     iconSize: 25,
                    //   ),
                    // )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Announcment",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "All students can find their Academic Mail Password inside their e-learning profile ,Please note that you can use this password for logging in to your Microsoft account (Outlook, Teams,...,etc.) NOT YOUR E-LEARNING ACCOUNT ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: MyColors.myblue,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //     child: Text(DateFormat.yMMMEd().format(DateTime.now()),
                //         style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.grey.withOpacity(0.9),
                //             fontWeight: FontWeight.w800))),
                // SizedBox(
                //   height: 8,
                // ),
                // Text("Today",
                //     style:
                //         TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                // SizedBox(
                //   height: 12,
                // ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       daysCard("Sat", true, Colors.white),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       daysCard("Sun", false, Colors.black),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       daysCard("Mon", false, Colors.black),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       daysCard("Tue", false, Colors.black),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       daysCard("Wed", false, Colors.black),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       daysCard("Thu", false, Colors.black),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       daysCard("Fri", false, Colors.black)
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // buildClassItem(),
                // SizedBox(
                //   height: 2,
                // ),
                // buildClassItem()
                Text(
                  "Semester Courses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    SCoursesCard(
                        Cname: 'Software Engeneer', Ccode: 'CS221', Pre: 'OOP'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'File Organization', Ccode: 'CS505', Pre: '--'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Computer Network',
                        Ccode: 'IS200',
                        Pre: 'Data Comunication'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Multimedia', Ccode: 'CS101', Pre: '--'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Image Processing', Ccode: 'CS200', Pre: '--'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Data Comunication', Ccode: 'CS500', Pre: '--'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Numerical Analiysis',
                        Ccode: 'CS405',
                        Pre: 'Mathmatical Analiysis'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Database Systems', Ccode: 'IS315', Pre: '--'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Software Engeneer', Ccode: 'CS221', Pre: 'OOP'),
                    SizedBox(
                      height: 20,
                    ),
                    SCoursesCard(
                        Cname: 'Software Engeneer', Ccode: 'CS221', Pre: 'OOP')
                  ],
                ))
              ],
            ),
          )),
        );
      },
    );
  }
}
