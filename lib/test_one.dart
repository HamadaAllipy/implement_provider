import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/providers/model.dart';
import 'package:providerr/providers/provider_three.dart';
import 'package:providerr/providers/provider_two.dart';

class TestOne extends StatelessWidget {
  const TestOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('provider'),
      ),
      body: Column(
        children: [
          Center(
            child: Consumer<Model>(
              builder: (BuildContext context, model, Widget? child) {
                return Text(
                  model.getName,
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Consumer<ProviderTwo>(
              builder: (BuildContext context, two, Widget? child) {
                return Text(
                  two.toString(),
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Consumer<ProviderThree>(
              builder: (BuildContext context, two, Widget? child) {
                return Text(
                  two.counter.toString(),
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              context.read<Model>().changeName();
              // model.changeName();
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text('Change Name'),
          ),
          const SizedBox(
            height: 10,
          ),
          Consumer<Model>(
            builder: (_, model, child) {
              return MaterialButton(
                onPressed: () {
                  model.changeAge();
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text('Change Age'),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              context.read<ProviderThree>().printConsole();
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text('Change console'),
          ),
        ],
      ),
    );
  }
}
