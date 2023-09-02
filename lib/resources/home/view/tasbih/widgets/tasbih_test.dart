import 'package:flutter/material.dart';

import '../../../../../utils/size_utility.dart';

class MyAnimatedWidget extends StatefulWidget {
  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500), // Set the animation duration
    );
    _animation = Tween<Offset>(
      begin: Offset(0.0, 0.0), // Starting point (point A)
      end: Offset(10.0, 10.0), // Ending point (point B)
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: _animation.value,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      'assets/images/tasbih_ball.png',
                      // fit: BoxFit.fill,
                      // width: 100,
                    ),
                  ), // Replace with your widget to animate
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _controller.forward(from: 0.0);
              // _controller.reset();
            },
            child: Text('Animate Widget'),
          ),
        ],
      ),
    );
  }
}
