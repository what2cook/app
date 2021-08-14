import 'package:flutter/material.dart';

import 'pages/intro/index.dart';
import 'pages/fridge/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What2Cook',
      home: Intro(),
      debugShowCheckedModeBanner: false,
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//   List _widgetOptions = [
//     Text(
//       'Favorites',
//       style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
//     ),
//     Text(
//       'Music',
//       style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
//     ),
//     Text(
//       'Places',
//       style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
//     ),
//     Text(
//       'News',
//       style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: SvgPicture.asset('logo_white.svg'),
//         title: Text('모해먹지'),
//         backgroundColor: Color(0xffe43630),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Color(0xffe43630),
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white.withOpacity(.60),
//         selectedFontSize: 14,
//         unselectedFontSize: 14,
//         currentIndex: _selectedIndex, //현재 선택된 Index
//         onTap: (int index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             title: Text('나의 냉장고'),
//             icon: Icon(Icons.kitchen),
//           ),
//           BottomNavigationBarItem(
//             title: Text('레시피'),
//             icon: Icon(Icons.menu_book),
//           ),
//           BottomNavigationBarItem(
//             title: Text('즐겨찾기'),
//             icon: Icon(Icons.star),
//           ),
//           BottomNavigationBarItem(
//             title: Text('설정'),
//             icon: Icon(Icons.settings),
//           ),
//         ],
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//     );
//   }
// }
//
// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }