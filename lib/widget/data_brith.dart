// import 'package:flutter/material.dart';
// class DataBrith extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         child: Text('Select Date of Birth'),
//         onPressed: () async {
//           DateTime? pickedDate = await showDatePicker(
//             context: context,
//             initialDate: DateTime.now(),
//             firstDate: DateTime(1900),
//             lastDate: DateTime.now(),
//           );
//           if (pickedDate != null) {
//             print('Selected date: ${pickedDate.toString()}');
//           }
//         },
//       ),
//     );
//   }
// }