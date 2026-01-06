// import 'package:flutter/material.dart';
//
// class ZipBottomSheet extends StatelessWidget {
//   const ZipBottomSheet({super.key});
//
//   void _show(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           height: 200,
//           color: Colors.amber,
//           child: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text('Modal BottomSheet'),
//                 ElevatedButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: const Text('Close BottomSheet'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () => _show(context),
//       child: const Text('Open Bottom Sheet'),
//     );
//   }
// }
