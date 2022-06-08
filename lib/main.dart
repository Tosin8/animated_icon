import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Animated Icon Demo',
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    debugShowCheckedModeBanner: false,
    home: const MyCustomIcon(),
  ));
}

class MyCustomIcon extends StatefulWidget {
  const MyCustomIcon({Key? key}) : super(key: key);

  @override
  State<MyCustomIcon> createState() => _MyCustomIconState();
}

class _MyCustomIconState extends State<MyCustomIcon> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
            child: SizedBox(
                height: width * 0.5,
                width: width * 0.5,
                child: Animator<double>(
                  duration: const Duration(milliseconds: 1000),
                  cycles: 0,
                  curve: Curves.easeInOut,
                  tween: Tween<double>(begin: 15.0, end: 25.0),
                  builder: (context, animatorState, child) {
                    return Icon(
                      Icons.audiotrack,
                      size: animatorState.value * 5,
                      color: Colors.blueGrey,
                    );
                  },
                ))));
  }
}
