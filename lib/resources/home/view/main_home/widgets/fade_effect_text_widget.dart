// import 'package:flutter/material.dart';

// class FadeTextWidget extends StatefulWidget {
//   final Widget child;

//   const FadeTextWidget({super.key, required this.child});

//   @override
//   FadeTextWidgetState createState() => FadeTextWidgetState();
// }

// class FadeTextWidgetState extends State<FadeTextWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();

//     // Create an animation controller
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 1), // Use the duration from the widget
//     );

//     // Create a linear animation
//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

//     // Start the animation
//     _controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FadeTransition(opacity: _animation, child: widget.child);
//   }

//   @override
//   void dispose() {
//     // Dispose of the animation controller when the widget is disposed
//     _controller.dispose();
//     super.dispose();
//   }
// }
