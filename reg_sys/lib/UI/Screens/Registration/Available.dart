import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reg_sys/UI/Componants/AvailableCard.dart';
import 'package:reg_sys/Logic/Buttons/cubit/buttons_cubit.dart';

class AvailableCourses extends StatelessWidget {
  const AvailableCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonsCubit(),
      child: BlocConsumer<ButtonsCubit, ButtonsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Software Engeneer', Ccode: 'CS221', Pre: 'OOP'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'File Organization', Ccode: 'CS505', Pre: '--'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Computer Network',
                    Ccode: 'IS200',
                    Pre: 'Data Comunication'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Multimedia', Ccode: 'CS101', Pre: '--'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Image Processing', Ccode: 'CS200', Pre: '--'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Data Comunication', Ccode: 'CS500', Pre: '--'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Numerical Analiysis',
                    Ccode: 'CS405',
                    Pre: 'Mathmatical Analiysis'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Database Systems', Ccode: 'IS315', Pre: '--'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Software Engeneer', Ccode: 'CS221', Pre: 'OOP'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ACoursesCard(
                    Cname: 'Software Engeneer', Ccode: 'CS221', Pre: 'OOP'),
              )
            ],
          );
        },
      ),
    );
  }
}
