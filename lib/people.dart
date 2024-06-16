import 'package:flutter/material.dart';

export 'people.dart';


class People extends StatefulWidget {
  const People({super.key});

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('helloer'),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const PeopleSecond()),
            );
          },
          child: const Text("Lets Go")),
    ));
  }
}

class PeopleSecond extends StatefulWidget {
  const PeopleSecond({super.key});

  @override
  State<PeopleSecond> createState() => _PeopleSecondState();
}

class _PeopleSecondState extends State<PeopleSecond> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hello people'),
        ),
      ),
    );
  }
}
