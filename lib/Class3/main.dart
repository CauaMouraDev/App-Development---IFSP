import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Frase do Dia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Frase do Dia'),
          backgroundColor: const Color.fromARGB(255, 69, 23, 39),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: const Color.fromARGB(255, 69, 23, 39),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Image.asset(
                    'img/neilton.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.pink, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'Container 1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'Container 2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
