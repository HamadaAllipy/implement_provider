import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/model.dart';

class TestOne extends StatefulWidget {
  const TestOne({Key? key}) : super(key: key);

  @override
  State<TestOne> createState() => _TestOneState();
}

class _TestOneState extends State<TestOne> {
  String name = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('provider'),
      ),
      body: Column(
        children: [
          Center(
            child: Selector<Model, String>(
              selector: (context, provS1){
                return provS1.getName;
              },
              builder: (context, name, child){
                print('REBUILD');
                return Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Selector<Model, int>(
              selector: (_, provS2)=> provS2.age,
              builder: (BuildContext context, age, Widget? child) {
                print('REBUILD');
                return Text(
                  age.toString(),
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Consumer<Model>(
            builder: (_, model, child){
              return MaterialButton(
                onPressed: () {
                  model.changeName();
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text('Change Name'),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Consumer<Model>(
            builder: (_, model, child){
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
        ],
      ),
    );
  }
}
