import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double tamanhoInicial = 300;
  double mudar = 50;
  double s = 50;
  double m = 300;
  double l = 500;

  double r = 0;
  double g = 0;
  double b = 0;

  double opacity = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if(tamanhoInicial > 50){
                   tamanhoInicial = tamanhoInicial - mudar;
                  }
                 print(tamanhoInicial);
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  if(tamanhoInicial < 500){
                  tamanhoInicial = tamanhoInicial + s;
                  }
                  print(tamanhoInicial);
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  if(tamanhoInicial < 500){
                  tamanhoInicial = tamanhoInicial + m;
                  }
                  print(tamanhoInicial);
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  if(tamanhoInicial < 500){
                   tamanhoInicial = tamanhoInicial + l;
                  }
                  print(tamanhoInicial);
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if(tamanhoInicial < 500){
                   tamanhoInicial = tamanhoInicial + mudar;
                  }
                  print(tamanhoInicial);
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: tamanhoInicial,
                  color: Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), opacity),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: 0,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          r = value;
                        print(value);
                        });
                       
                      },
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: 0,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          g = value;
                        print(value);
                        });
                        
                      },
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: 0,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          b = value;
                        print(value);
                        });
                        
                      },
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}