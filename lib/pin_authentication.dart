// import 'package:coinatik/responsive_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:local_auth/local_auth.dart';
//
// class PinAuthScreen extends StatefulWidget {
//   @override
//   _PinAuthScreenState createState() => _PinAuthScreenState();
// }
//
// class _PinAuthScreenState extends State<PinAuthScreen> {
//   final LocalAuthentication _localAuth = LocalAuthentication();
//   String _enteredPin = '';
//
//   Future<void> _authenticateWithFingerprint() async {
//     bool isAuthenticated = false;
//
//     try {
//       isAuthenticated = await _localAuth.authenticate(
//         localizedReason: 'Authenticate to unlock',
//         // useErrorDialogs: true,
//         // stickyAuth: true,
//       );
//     } on PlatformException catch (e) {
//       print("Error during fingerprint authentication: $e");
//     }
//
//     if (isAuthenticated) {
//       _unlockScreen();
//     }
//   }
//
//   void _unlockScreen() {
//     // Navigate to the main app screen
//     Get.offAll(() => MainScreen());
//   }
//
//   void _handlePinInput(String digit) {
//     if (_enteredPin.length < 4) {
//       setState(() {
//         _enteredPin += digit;
//       });
//
//       if (_enteredPin.length == 4) {
//         if (_enteredPin == '1234') {
//           _unlockScreen();
//         } else {
//           _enteredPin = '';
//           Get.snackbar('Error', 'Invalid PIN entered. Please try again.');
//         }
//       }
//     }
//   }
//
//   void _deleteLastDigit() {
//     if (_enteredPin.isNotEmpty) {
//       setState(() {
//         _enteredPin = _enteredPin.substring(0, _enteredPin.length - 1);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: (246 / 896) * ResponsiveManager.getDeviceHeight(context),
//             ),
//             const SizedBox(
//               // height: (36 / 896) * ResponsiveManager.getDeviceHeight(context),
//               // width: (300 / 414) * ResponsiveManager.getDeviceWidth(context),
//               child: Text(
//                 'Enter PIN',
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontFamily: "Inter",
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF005EFF)),
//               ),
//             ),
//             SizedBox(
//               height: (10 / 896) * ResponsiveManager.getDeviceHeight(context),
//             ),
//             SizedBox(
//               width: (140 / 414) * ResponsiveManager.getDeviceHeight(context),
//               child: Text(
//                 'Please enter your Pin to continue. ',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 12,
//                   fontFamily: "ComicNeue",
//                   color: Color(0xFF005EFF),
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: (57 / 896) * ResponsiveManager.getDeviceHeight(context),
//             ),
//             SizedBox(
//               height: (50 / 896) * ResponsiveManager.getDeviceHeight(context),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   for (int i = 0; i < 4; i++)
//                     // PinBox(value: i < _enteredPin.length ? '.' : ''),
//                     const SizedBox(width: 10),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: (69 / 896) * ResponsiveManager.getDeviceHeight(context),
//             ),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     for (int i = 1; i <= 3; i++)
//                       PinButton(
//                           digit: i.toString(),
//                           onPressed: () => _handlePinInput(i.toString())),
//                   ],
//                 ),
//                 SizedBox(height: 5),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     for (int i = 4; i <= 6; i++)
//                       PinButton(
//                           digit: i.toString(),
//                           onPressed: () => _handlePinInput(i.toString())),
//                   ],
//                 ),
//                 SizedBox(height: 5),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     for (int i = 7; i <= 9; i++)
//                       PinButton(
//                           digit: i.toString(),
//                           onPressed: () => _handlePinInput(i.toString())),
//                   ],
//                 ),
//                 SizedBox(height: 5),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.fingerprint),
//                       onPressed: _authenticateWithFingerprint,
//                       iconSize: 40,
//                       color: Color(0xFF005EFF),
//                     ),
//                     PinButton(
//                         digit: '0', onPressed: () => _handlePinInput('0')),
//                     // IconButton(
//                     //   icon: Icon(Icons.backspace),
//                     //   onPressed: _deleteLastDigit,
//                     //   color: Color(0xFF005EFF),
//                     // ),
//                     Container(
//                       width: 68,
//                       height: 68,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color(0x1A005EFF),
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.backspace),
//                         onPressed: _deleteLastDigit,
//                         color: Color(0xFF005EFF),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class PinButton extends StatelessWidget {
//   final String digit;
//   final VoidCallback onPressed;
//
//   PinButton({required this.digit, required this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 68,
//       height: 68,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: Color(0x1A005EFF),
//       ),
//       child: IconButton(
//         icon: Text(
//           digit,
//           style: TextStyle(fontSize: 24, color: Color(0xFF005EFF)),
//         ),
//         onPressed: onPressed,
//       ),
//     );
//   }
// }
//
// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Main App Screen')),
//       body: Center(child: Text('Welcome to the app!')),
//     );
//   }
// }
