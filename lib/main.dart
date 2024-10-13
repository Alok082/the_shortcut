import 'package:flutter/material.dart';
import 'package:theshortcut/customs/custombutton.dart';
import 'package:theshortcut/customs/dropdown.dart';
import 'package:theshortcut/customs/textformfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String? _gender;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CustomTextField(
              padding: EdgeInsets.all(5),
              controller: TextEditingController(),
              ispasswordtype: true,
              validater: (value) {},
              hinttext: '',
            ),
            CustomButton(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              buttonsize: Size(MediaQuery.sizeOf(context).width * 1,
                  MediaQuery.sizeOf(context).height * 0.06),
              buttoncolor: const Color.fromARGB(255, 138, 30, 30),
              button_name: 'abc',
              buttonaction: () {},
            ),
            Dropdown(
              hinttext: 'Enter gender',
              itemlist: const [
                DropdownMenuItem(value: 'male', child: Text('Male')),
                DropdownMenuItem(value: 'female', child: Text('Female')),
                DropdownMenuItem(value: 'other', child: Text('Other')),
              ],
              onchange: (value) {
                setState(() {
                  _gender = value;
                });
              },
              validater: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select your Gender';
                }
                return null;
              },
              value: _gender,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
