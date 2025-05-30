import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aula 2"),
          backgroundColor: Colors.blue,
          actions: [
            TextButton(onPressed: () {}, child: Text("Início")),
            TextButton(onPressed: () {}, child: Text("Serviços")),
            TextButton(onPressed: () {}, child: Text("Contact")),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Olá Mundo",
                    textAlign: TextAlign.center,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  Icon(Icons.person),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Meu primeiro Site em Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.accessible),
                  Icon(Icons.account_tree_sharp),
                  Icon(Icons.star_border_purple500),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    },
                    child: Text("Clique Aqui!"),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'total de cliques $_counter',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(5, (index) {
                  return Card(
                    elevation: 4,
                    child: Container(
                      width: 250,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.person, size: 48),
                          SizedBox(height: 12),
                          Text(
                            "SERVIÇO ${index + 1}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            "Descrição breve do Serviço",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
