import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:reg_sys/UI/Screens/Home.dart';
import 'package:reg_sys/UI/Screens/Registration/Registration.dart';
import 'package:reg_sys/UI/Screens/Grades.dart';
import 'package:reg_sys/UI/Screens/Profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../Shared/Colors.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(NavbarInitial());
  static NavbarCubit get(context)=> BlocProvider.of(context);
  var currentIndex = 0;
  List<SalomonBottomBarItem> BottomNavItems=[
          SalomonBottomBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text("Home"),
            selectedColor: MyColors.myblue,
          ),
           SalomonBottomBarItem(
              icon: Icon(CupertinoIcons.pencil_outline),
              title: Text("Registration"),
              selectedColor: MyColors.myblue,
            ),
            SalomonBottomBarItem(
              icon: Icon(CupertinoIcons.clock),
              title: Text("Grades"),
              selectedColor: MyColors.myblue,
            ),
            SalomonBottomBarItem(
              icon: Icon(CupertinoIcons.person),
              title: Text("Profile"),
              selectedColor: MyColors.myblue,
            ),
        ];
   final List <Widget> pages=[
    HomeScreen(),
    RegistrationScreen(),
    GradesScreen(),
    Profile()
  ];
  void changeindex (index){
    currentIndex=index;
    emit(ChangeNavBarState());
  }
    
  
}
