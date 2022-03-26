import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    print('HAMADA HAMADA HAMADA');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StateFullWidget',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Center(
        child: Row(
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
        ),
      ),
    );
  }
}
