import 'package:flutter/material.dart';

class StateFulBuilder extends StatelessWidget {
  const StateFulBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = 0;
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
                      counter--;
                    });
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
                Text(
                  counter.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState((){
                      counter++;
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
