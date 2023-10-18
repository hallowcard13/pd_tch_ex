import 'package:flutter/material.dart';

class SecondTaskView extends StatefulWidget {
  const SecondTaskView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SecondTaskView();
}

class _SecondTaskView extends State<SecondTaskView> {
  void httpCall() {
    print('I have called');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      httpCall();
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 1,
      ),
      body: Center(child: Text('Second Task')),
    );
  }
}
