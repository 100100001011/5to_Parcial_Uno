import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Slider'),
          ),
          body:Container(child: Deslizador()),
          ),
    );
  }
}

class Deslizador extends StatefulWidget {
  Deslizador({Key? key}) : super(key: key);

  @override
  _DeslizadorState createState() => _DeslizadorState();
}

class _DeslizadorState extends State<Deslizador> {
  //VARIABLE
  double valorMostrar = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //TEXTO
        Text(valorMostrar.toString(),style: TextStyle(fontSize: 30)),
        //DESLIZADOR
        Slider(
            //VALOR
            value: valorMostrar,
            //VALOR_INICIO
            min: 0,
            //VALOR_FINAL
            max: 10,
            //ESPACIADORES
            divisions: 20,
            //COLRES
            activeColor: Colors.black,
            inactiveColor: Colors.red,
            //viñeta 
            label: valorMostrar.toString(),
            //METODO
            onChanged: (value) {
              //METODO PARA ACTUALIZAR DE FORMA DINAMICA LOS VALORES
              setState(() {
                valorMostrar=value;
              });
            }),
      ],
    );
  }
}
