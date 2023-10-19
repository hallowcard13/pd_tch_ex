import 'package:flutter/material.dart';

class FourthTaskView extends StatelessWidget {
  const FourthTaskView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(child: Text('Fourthtasks')),
    );
  }
}
