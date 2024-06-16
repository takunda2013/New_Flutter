import 'package:flutter/material.dart';
export 'myapp.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('l love Programming'),
          backgroundColor: const Color.fromARGB(255, 240, 182, 182),
        ),
        body: Stack(
          // mainAxisAlignment: MainAxisAlignment.center, //x direction
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Positioned(
              right: 0.0,
              child: Text(
                '$count',
                style: const TextStyle(fontSize: 28),
              ),
            ),
            Positioned(
                top: 4.0,
                // left: 0.0,
                child: TextButton(
                    onPressed: () => setState(() {
                          count--;
                        }),
                    child: const Text('Hello'))),
            const Positioned(
              top: 40.0,
              left: 15.0,
              right: 0.0,
              child: Text('Flutter is the Best and is Fast to setup',
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 3, 3),
                      fontFamily: 'Barlow-Black')),
            ),
            Positioned(
                top: 80.0,
                left: 15.0,
                right: 15.0,
                child: TextButton(
                  // image can be clicked
                  onPressed: () => setState(() {
                    count++;
                  }),
                  child: Column(
                    children: [
                      Image.asset('assets/images/dog.jpg'),
                      Image.asset(
                        'assets/images/angryDog.jpg',
                        fit: BoxFit.fill,
                        colorBlendMode: BlendMode.exclusion,
                        color: const Color.fromARGB(255, 92, 244, 54)
                            .withOpacity(0.2),
                      ),
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.picture_in_picture_alt_outlined,
          ),
          onPressed: () => setState(() {
            count++;
          }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
        drawer: const Drawer(
          child: Text("Hello Geeks"),
        ),
        backgroundColor: const Color.fromARGB(255, 209, 209, 238),
      ),
    );
  }
}
