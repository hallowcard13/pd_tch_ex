import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/counter_bloc.dart';

class FourthTaskOutputView extends StatelessWidget {
  const FourthTaskOutputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Output'),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Center(
              child: Text(
            '$state',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ));
        },
      ),
    );
  }
}
