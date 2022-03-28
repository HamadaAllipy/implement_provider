import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:providerr/example/bloc_example/bloc/counter_bloc.dart';
import 'package:providerr/example/bloc_example/bloc/counter_events.dart';

class HomeBlocScreen extends StatelessWidget {
  const HomeBlocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc Pattern',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                counterBloc.add(CounterIncrementPressed());
              },
              child: const Text(
                '+',
              ),
            ),
            BlocBuilder<CounterBloc, int>(
              builder: (context, state){
                return Text(
                  state.toString(),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(CounterDecrementPressed());
              },
              child: const Text(
                '-',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
