import 'package:flutter/material.dart';

import 'components/containers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool swap = true;
  List<MyContainer> widgetArrary = [
    const MyContainer(),
    const MyContainer(),
  ];

  void swapped() {
    if (swap) {
      swap = false;
      setState(() {});
    } else {
      swap = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: swap
          ? SafeArea(
              child: Row(
                children: [
                  widgetArrary[0],
                  widgetArrary[1],
                  widgetArrary[2],
                ],
              ),
            )
          : null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          swapped();
        },
        child: const Icon(
          Icons.clear_all_rounded,
        ),
      ),
    );
  }
}
