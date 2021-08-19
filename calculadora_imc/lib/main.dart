import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(key: null),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.person_outlined,
              color: Colors.green,
              size: 120.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso KG",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura CM",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
            ),
           Padding(
             padding: EdgeInsets.only(top:10.0, bottom:10.0),
             child:  Container(
               height: 50,
               child: ElevatedButton(
                 onPressed: () {},
                 child: Text(
                   "Calcular",
                   style: TextStyle(color: Colors.white, fontSize: 25.0),
                 ),
                 style: ElevatedButton.styleFrom(
                   primary: Colors.green,
                   padding: EdgeInsets.all(5.0),
                 ),
               ),
             ),
           ),
            Text(
              "Info",
              style: TextStyle(fontSize: 25.0, color: Colors.green),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
