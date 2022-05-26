// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, slash_for_doc_comments, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '第四章知识点',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chapter4 Demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

/**
 * Row 和 Column知识点
 */
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//             child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           'Row 和 Column演示',
//           style: TextStyle(fontSize: 20.0),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(" hello world "),
//             Text(" I am Jack "),
//           ],
//         ),
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(" hello world "),
//             Text(" I am Jack "),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           textDirection: TextDirection.rtl,
//           children: <Widget>[
//             Text(" hello world "),
//             Text(" I am Jack "),
//           ],
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           verticalDirection: VerticalDirection.up,
//           children: <Widget>[
//             Text(
//               " hello world ",
//               style: TextStyle(fontSize: 30.0),
//             ),
//             Text(" I am Jack "),
//           ],
//         ),
//       ],
//     )));
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//             child: Column(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Text('Row 和 Column演示'),
//         ),
//         Row(
//           children: [
//             Text('这是第一张图片'),
//             Image.asset('images/2.0x/p1.jpeg', width: 100.0, height: 50.0),
//           ],
//         ),
//         Row(
//           children: [
//             Text('这是第二张图片'),
//             Image.asset('images/2.0x/p2.jpeg', width: 100.0, height: 50.0),
//           ],
//         ),
//         Row(
//           children: [
//             Text('这是第三张图片'),
//             Image.asset('images/2.0x/p3.jpeg', width: 100.0, height: 50.0),
//           ],
//         ),
//       ],
//     )));
//   }
// }
/**
 * Flex 布局知识点
 */

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//             child: Column(
//       children: [
//         Flex(
//           direction: Axis.horizontal,
//           children: [
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 30.0,
//                 color: Colors.red,
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 height: 30.0,
//                 color: Colors.green,
//               ),
//             ),
//           ],
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: 20.0),
//           child: SizedBox(
//             height: 100.0,
//             child: Flex(
//               direction: Axis.vertical,
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     height: 30.0,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Spacer(
//                   flex: 1,
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     height: 30.0,
//                     color: Colors.green,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     )));
//   }
// }
/**
 * Wrap知识点
 */
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Wrap(
//       spacing: 8.0,
//       runSpacing: 4.0,
//       alignment: WrapAlignment.center,
//       children: <Widget>[
//         Chip(
//           avatar: CircleAvatar(
//             backgroundColor: Colors.blue,
//             child: Text('A'),
//           ),
//           label: Text('Hamilton'),
//         ),
//         Chip(
//           avatar: CircleAvatar(
//             backgroundColor: Colors.blue,
//             child: Text('M'),
//           ),
//           label: Text('Lafayette'),
//         ),
//         Chip(
//           avatar: CircleAvatar(
//             backgroundColor: Colors.blue,
//             child: Text('H'),
//           ),
//           label: Text('Mulligan'),
//         ),
//         Chip(
//           avatar: CircleAvatar(
//             backgroundColor: Colors.blue,
//             child: Text('J'),
//           ),
//           label: Text('Laurens'),
//         ),
//       ],
//     ));
//   }
// }
/**
 * Stack知识点
 */

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: Text(
              "Hello world",
            ),
            color: Colors.red,
          ),
          Positioned(
            left: 30.0,
            child: Icon(Icons.search, size: 40.0, color: Colors.black),
          ),
          Positioned(
            right: 18.0,
            child: Icon(Icons.shopping_cart, size: 40.0, color: Colors.black),
          ),
          Positioned(
            bottom: 0.0,
            child:
                Icon(Icons.add_shopping_cart, size: 40.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
