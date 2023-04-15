import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:reg_sys/Logic/Navbar/cubit/navbar_cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: BlocConsumer<NavbarCubit, NavbarState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = NavbarCubit.get(context);
          return Scaffold(
            bottomNavigationBar: SalomonBottomBar(
              itemPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 28),
              items: cubit.BottomNavItems,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeindex(index);
              },
            ),
            body: cubit.pages[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
