import 'package:flutter/material.dart';

Widget CustomExpensionTile({required String year}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.1)),
      child: ExpansionTile( 
        title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(year,style: TextStyle(fontSize: 18),),
      ), children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Database Systems',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('B+',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
        ),Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Multimedia',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('C',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
        ),Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Data Communication',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('B',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
        ),Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Image Proccecing',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('A+',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
        )
      ]),
    ),
  );
}
