import 'package:flutter/material.dart';
import 'package:reg_sys/Shared/Colors.dart';

import '../Componants/CExpensionTile.dart';

class GradesScreen extends StatelessWidget {
  const GradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
              color: MyColors.myblue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Center(
            child: Container(
              height: 80,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          'Total\n GPA',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '3.5',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 2,
                    color: Colors.grey,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text('Total\nCredit Hours',
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '48',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
            height: 520,
            width: double.infinity,
            child: ListView(
              children: [
                CustomExpensionTile(year: 'Fall 2020'),
                CustomExpensionTile(year: 'Spring 2022'),
                CustomExpensionTile(year: 'Fall 2021'),
                CustomExpensionTile(year: 'Summer 2021'),
                CustomExpensionTile(year: 'Fall 2022')
              ],
            )),
      ],
    ));
  }
}
