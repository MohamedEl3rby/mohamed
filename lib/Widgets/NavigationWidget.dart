// import 'package:circular_reveal_animation/circular_reveal_animation.dart';
// import 'package:flutter/material.dart';
// import 'package:mohamed/Helper/ConvertHex.dart';
//
// class NavigationWidget extends StatefulWidget {
//   final Image imageData;
//   NavigationWidget(this.imageData) : super();
//   @override
//   _NavigationWidgetState createState() => _NavigationWidgetState();
// }
//
// class _NavigationWidgetState extends State<NavigationWidget>
//     with TickerProviderStateMixin {
//   AnimationController _controller;
//   Animation<double> animation;
//   @override
//   void didUpdateWidget(NavigationWidget oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (oldWidget.imageData != widget.imageData) {
//       _startAnimation();
//     }
//   }
//
//   @override
//   void initState() {
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 1000),
//     );
//     animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeIn,
//     );
//     _controller.forward();
//     super.initState();
//   }
//
//   _startAnimation() {
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 1000),
//     );
//     animation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeIn,
//     );
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       color: Colors.white,
//       child: Center(
//         child: CircularRevealAnimation(
//           animation: animation,
//           centerOffset: Offset(80, 80),
//           maxRadius: MediaQuery.of(context).size.longestSide * 1.1,
//           child: Image.asset(
//             '${widget.imageData}',
//             color: HexColor('#FFA400'),
//             height: 160,
//           ),
//         ),
//       ),
//     );
//   }
// }
