import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "BMI CALCULATOR",
      home: HomePage(),
    );
  }
}

// Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                       style: ElevatedButton.styleFrom(primary: Colors.blue),
//                       onPressed: () {
//                         setState(() {
//                           lightMode();
//                         });
//                       },
//                       child: Text(
//                         "Light Mode",
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       )),
//                   ElevatedButton(
//                       style: ElevatedButton.styleFrom(primary: Colors.black87),
//                       onPressed: () {
//                         setState(() {
//                           darkMode();
//                         });
//                       },
//                       child: Text(
//                         "Dark  Mode",
//                         style: TextStyle(color: Colors.white),
//                       )),
//                 ],
//               ),
              // Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           "Version",
              //           style: TextStyle(
              //               fontSize: 23,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black),
              //         ),
              //         Text(
              //           " 2.0",
              //           style: TextStyle(
              //               fontSize: 23,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.red[900]),
              //         ),
              //       ],
              //     ),
              //   ],
              // )
        //     ],
        //   ),
        // ),

