import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Available.dart';
import 'Semester.dart';
import 'package:reg_sys/Shared/Colors.dart';
import 'package:reg_sys/Logic/Buttons/cubit/buttons_cubit.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonsCubit(),
      child: BlocConsumer<ButtonsCubit, ButtonsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return DefaultTabController(
            length: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 12),
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.square(70),
                  child: Container(
                    color: MyColors.mygrey,
                    child: SafeArea(
                      child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Semestar \n Courses",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Available \n Courses",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [SemesterCourses(), AvailableCourses()],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
