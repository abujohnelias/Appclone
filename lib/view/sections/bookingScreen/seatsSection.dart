// import 'package:clone_app/view/sections/bookingScreen/selectSeat.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SeatsSection extends StatelessWidget {
//   const SeatsSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(child: Container(
//       child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ///text1
//         Align(
//           alignment: Alignment.topCenter,
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Text(
//               "Select Seat",
//               style: GoogleFonts.poppins(
//                   fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//           ),
//         ),

//         ///details card
//         SizedBox(
//             height: 200,
//             width: 450,
//             child: Card(
//               elevation: 20,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15)),
//               child: Stack(children: [Text("data")]),
//             )),

//         ///text2
//         Padding(
//           padding: const EdgeInsets.all(2),
//           child: Text(
//             "Business Class",
//             style: GoogleFonts.poppins(
//                 fontSize: 20, fontWeight: FontWeight.w500),
//           ),
//         ),

//         ////seatselection section Business Class
//         Expanded(
//           child: SizedBox(height: 50,child: SelectSeat()),
//         ),

//         ///text3
//         Padding(
//           padding: const EdgeInsets.all(2),
//           child: Text(
//             "Economy",
//             style: GoogleFonts.poppins(
//                 fontSize: 20, fontWeight: FontWeight.w500),
//           ),
//         ),

//         ////seatselection section Business Class
//         Expanded(
//           child: SelectSeat(),
//         ),

//         ////elements
//         Row(children: [],)

       
//       ],
//         ),),);
//   }
// }