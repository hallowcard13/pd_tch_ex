import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/counter_bloc.dart';

class FourthTasksInputView extends StatelessWidget {
  FourthTasksInputView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Input'),
          centerTitle: true,
        ),
        body: Container(
          width: 375,
          height: 500,
          child: Column(children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: BlocBuilder<CounterBloc, int>(
                  builder: (context, state) {
                    return Text(
                      '$state',
                      style: const TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    );
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 25.0),
                  child: GestureDetector(
                    onTap: () => context.read<CounterBloc>().increment(),
                    child: const Icon(
                      Icons.add_circle,
                      size: 50.0,
                      weight: 700,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => context.read<CounterBloc>().decrement(),
                  child: const Icon(
                    Icons.remove_circle,
                    weight: 700.0,
                    size: 50.0,
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
