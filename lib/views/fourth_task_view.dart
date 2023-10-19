import 'package:flutter/material.dart';
import './fourth_task_input_view.dart';
import './fourth_task_output_view.dart';

class FourthTaskView extends StatelessWidget {
  const FourthTaskView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true),
        body: Container(
          width: 375.0,
          height: 500.0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FourthTasksInputView(),
                      ));
                    },
                    child: Text('Input')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FourthTaskOutputView(),
                      ));
                    },
                    child: Text('Output'))
              ]),
        ));
  }
}
