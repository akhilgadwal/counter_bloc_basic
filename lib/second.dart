import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondePage extends StatelessWidget {
  const SecondePage({super.key});
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blocs'),
      ),
      body: BlocBuilder(
        bloc: counterBloc,
        builder: (context, state) {
          return Center(
            child: Text(
              counterBloc.state.counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
