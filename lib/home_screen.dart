import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _counter = 0;

  _increment() {
    setState(() {
      _counter++;
    });
  }

  _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter App"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              items: [1, 2, 3]
                  .map(
                    (item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item.toString(),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TextButton.icon(
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.white,
                //     backgroundColor: Colors.red
                //   ),
                //   onPressed: _decrement,
                //   icon: Icon(Icons.remove),
                //   label: Text("Decrement"),
                // ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                //   onPressed: _decrement,
                //   child: Icon(Icons.remove),
                // ),
                OutlinedButton(
                    onPressed: _decrement, child: Icon(Icons.remove)),
                SizedBox(
                  width: 20,
                ),
                Text(
                  _counter.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(onPressed: _increment, child: Icon(Icons.add)),

                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.red
                //   ),
                //   onPressed: _increment,
                //   child: Icon(Icons.add),
                // ),
                // TextButton(
                //   onPressed: _increment,
                //   child: Icon(Icons.add),
                // ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
