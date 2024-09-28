import 'package:flutter/material.dart';
import 'package:learn_provider/counter_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'HomePage',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Text('This is home page ${value.count}'),
        ),
        floatingActionButton: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                final counter = context.read<CounterModel>();
                counter.increment();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: () {
                final counter = context.read<CounterModel>();
                counter.decrement();
              },
              child: Icon(Icons.minimize_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
