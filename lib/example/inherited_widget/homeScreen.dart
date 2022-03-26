import 'package:flutter/material.dart';
import 'package:providerr/example/inherited_widget/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of(context);
    print('HAMADA HAMADA HAMADA');
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateFullBuilder'),
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, StateSetter setState,){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState((){
                      provider!.counter--;
                    });
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
                Text(
                  provider!.counter.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState((){
                      provider.counter++;
                    });
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
