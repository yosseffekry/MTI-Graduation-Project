// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../Logic/Buttons/cubit/buttons_cubit.dart';
// import '../../Shared/Colors.dart';

// Widget daysCard(String day, bool isPressed, Color fontColor) {
//   return BlocProvider(
//     create: (context) => ButtonsCubit(),
//     child: BlocConsumer<ButtonsCubit, ButtonsState>(
//       listener: (context, state) {
//         // TODO: implement listener
//       },
//       builder: (context, state) {
        
//         var cubit = ButtonsCubit.get(context);
//         return InkWell(
          
//           child: Container(
//             width: 73,
//             height: 40,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: Center(
//                   child: Text(
//                 day,
//                 style: TextStyle(color: fontColor, fontWeight: FontWeight.w400),
//               )),
//             ),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: isPressed
//                     ? MyColors.myorange
//                     : Colors.grey.withOpacity(0.15)),
//           ),
//           onTap: () {
            
//           });
        
//       },
//     ),
//   );
// }
