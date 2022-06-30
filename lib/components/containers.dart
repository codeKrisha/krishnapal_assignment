import 'dart:math';

import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  Color clr = Colors.red;
  @override
  void initState() {
    super.initState();
    clr = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: clr,
    );
  }
}
