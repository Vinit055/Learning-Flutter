import 'package:flutter/material.dart';

class DemoMaterialPage extends StatelessWidget {
  const DemoMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Card(
            color: Colors.white,
            surfaceTintColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: Text("Hello Pranav",
                  style: TextStyle(color: Colors.pinkAccent)),
            ),
          ),
        ),
      ),
    );
  }
}
