// import 'main.dart';
// import 'package:flutter/material.dart';
//
// class Role extends StatefulWidget {
//   const Role({Key? key}) : super(key: key);
//
//   @override
//   State<Role> createState() => _RoleState();
// }
//
// class _RoleState extends State<Role> {
//
//   double screenHeight = 0;
//   double screenWidth = 0;
//   @override
//   Widget build(BuildContext context) {
//
//     screenWidth = MediaQuery.of(context).size.width;
//     screenHeight = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             alignment: Alignment.centerLeft,
//             margin: EdgeInsets.only(
//               top: screenHeight / 5,
//               bottom: screenHeight / 5,
//             ),
//             child : Column (
//             crossAxisAlignment: CrossAxisAlignment.start,
//               Text(
//               "Select Role",
//               style: TextStyle(
//                 fontFamily: "IBMPlexSans-Bold",
//                 fontSize: screenWidth / 15,
//               ),
//             ),
//             ),
//           ),
//       ],
//     ),
//     );
//   }
// }
//
