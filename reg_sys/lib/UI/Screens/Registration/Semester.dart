import 'package:flutter/material.dart';
import 'package:reg_sys/UI/Componants/CourseCard.dart';

class SemesterCourses extends StatelessWidget {
  const SemesterCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Software Engeneer',Ccode: 'CS221',Pre: 'OOP'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'File Organization',Ccode: 'CS505',Pre: '--'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Computer Network',Ccode: 'IS200',Pre: 'Data Comunication'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Multimedia',Ccode: 'CS101',Pre: '--'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Image Processing',Ccode: 'CS200',Pre: '--'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Data Comunication',Ccode: 'CS500',Pre: '--'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Numerical Analiysis',Ccode: 'CS405',Pre: 'Mathmatical Analiysis'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Database Systems',Ccode: 'IS315',Pre: '--'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Software Engeneer',Ccode: 'CS221',Pre: 'OOP'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SCoursesCard(Cname: 'Software Engeneer',Ccode: 'CS221',Pre: 'OOP'),
        )
      ],
    );
  }
}
