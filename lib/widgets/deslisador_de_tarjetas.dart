import 'package:flutter/material.dart';


class DeslizadorTarjetas extends StatelessWidget{
  const DeslizadorTarjetas({Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
  
  return Container(

    width: double.infinity,  // va a tomar todo al ancho posbile dependiendo en el padre (en este caso el padre es una columna)
    height: 500, // va a tener una altura de 500
    color: Colors.red,
  );

  }
}