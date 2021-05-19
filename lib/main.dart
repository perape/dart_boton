import 'package:flutter/material.dart';
import 'dart:math';

class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HelloState();
  }
}
class _HelloState extends State<HelloStateful>{
  int variable_estado = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hope Starwars Stateful"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cambio de la variable de estado: ",
              style: TextStyle(fontSize: 28, color: Colors.deepPurpleAccent),),
            Text('$variable_estado',
              style: TextStyle(fontSize: 40, color: Colors.deepOrange),)
          ],
        ),
        //floatingActionButton: _crea_botones2(),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _crea_botones(),
          _crea_botones2(),
          _crea_botones3()
        ],

      ) ,


    );
  }
  Widget _crea_botones(){
    return
      Row(
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded),onPressed: funcion_zero)
      ],
    );
  }
  Widget _crea_botones2(){
    return
      Row(
        children: <Widget>[
          SizedBox(width: 30,),
          FloatingActionButton(child: Icon(Icons.add_box),onPressed: funcion_masdos)
        ],
      );
  }
  Widget _crea_botones3(){
    return
      Row(
        children: <Widget>[
          SizedBox(width: 30,),
          FloatingActionButton(child: Icon(Icons.double_arrow),onPressed: funcion_aleatorio)
        ],
      );
  }


  void funcion_zero(){
    setState(() {
      variable_estado = 0;
    });
  }
  void funcion_masdos(){
    setState(() {
      variable_estado = variable_estado+2;
    });
  }
  void funcion_aleatorio(){
    setState(() {
      Random random = new Random();
      variable_estado = random.nextInt(10);
    });
  }
}



void main() {
  //runApp(MyApp());
  runApp(
    MaterialApp(
      title: "Hope:starwars App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text("Hope: a starwars app"),

        ),
        body: HelloStateful(),

      ),
    )
  );
}





class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Mi primer FLutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter 01"),
        ),
        body: Center(
          child: Text("Hello World"),
        )
      ),
    );
  }


}