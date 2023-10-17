import 'package:flutter/material.dart';
import '../views/first_task_view.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Screen"),
          centerTitle: true,
          elevation: 1.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: ListTile(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FirstTaskView())),
                    title: const Text('I. UI Layout'),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('II. API Integration'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('III. Data Manipulation'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('IV: State Management'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
