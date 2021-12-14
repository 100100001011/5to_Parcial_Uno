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
  double valor = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //TEXTO
        Text(valor.toString(),style: TextStyle(fontSize: 30)),
        //DESLIZADOR
        Slider(
            //VALOR
            value: valor,
            //VALOR_INICIO
            min: 0,
            //VALOR_FINAL
            max: 10,
            //ESPACIADORES
            divisions: 20,
            //COLRES
            activeColor: Colors.black,
            inactiveColor: Colors.red,
            //TEXTO
            label: valor.toString(),
            //METODO
            onChanged: (value) {
              
              setState(() {
                valor=value;
              });
            }),
      ],
    );
  }
}
