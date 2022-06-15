import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas State Management Trivena Natalia Gunawan 20200120055 TI-IS 1/4',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/awal',
      routes: {
        '/awal': (context) => const MyHomePage(title: 'Home Page'),
        '/hal1': (context) => const FirstPage(title: 'First Page'),
        '/hal2': (context) => const SecondPage(title: 'Second Page'),
        '/hal3': (context) => const ThirdPage(title: 'Third Page'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Jumlah berapa kali tombol ditekan:',
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 20),
            const Text(
              'Silahkan pilih halaman di bawah ini:',
            ),
            const SizedBox(height: 5),

            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                
                ElevatedButton(
                  child: const Text('1'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/hal1',
                    arguments: Info('$_counter'));
                  },
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  child: const Text('2'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/hal2',
                    arguments: Info('$_counter'));
                  },
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  child: const Text('3'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/hal3',
                    arguments: Info('$_counter'));
                  },
                ),
                
              ]
            ),

          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        splashColor: Colors.black,
        tooltip: 'Ini tombol',
        child: const Icon(Icons.add),
      ),
      
    );
  }
}

class Info {
  final String count;
  Info(this.count);
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(args.count,
                style: const TextStyle(fontSize: 50, color: Colors.blueGrey)),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(args.count,
                style: const TextStyle(fontSize: 50, color: Colors.blueGrey)),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(args.count,
                style: const TextStyle(fontSize: 50, color: Colors.blueGrey)),
          ),
        ],
      ),
    );
  }
}