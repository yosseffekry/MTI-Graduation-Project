import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reg_sys/Shared/Colors.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../Logic/Buttons/cubit/buttons_cubit.dart';

Widget ACoursesCard(
    {required String Cname, required String Ccode, required String Pre}) {
  return BlocProvider(
    create: (context) => ButtonsCubit(),
    child: BlocConsumer<ButtonsCubit, ButtonsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = ButtonsCubit.get(context);
        
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Text(
                        Cname,
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: Text(Ccode),
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('Prerequisite: $Pre'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: RoundCheckBox(
                          animationDuration: Duration(microseconds: 1000),
                          isChecked: cubit.value,
                          checkedWidget: Icon(Icons.check,color: Colors.white,),
                          checkedColor:  MyColors.myorange,
                          border: Border.all(
                            width: 4,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                          uncheckedColor: Colors.transparent,
                          onTap: (selected) {
                              cubit.buttonClicked();
                              
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ));
      },
    ),
  );
}
