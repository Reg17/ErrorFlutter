import 'dart:ui';

import 'package:flutter/material.dart';

class DeslizadorPeliculas extends StatelessWidget {
  const DeslizadorPeliculas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // con esto ajustamos que los elemntos que se le pongan a la columna, contenedor. etc queden al comienzo, centro, derecha, izquierda (el texto puede ser uno de esto)
        children:  [
        
          const Padding( // este paddign solo se aplica al texto
            padding: EdgeInsets.symmetric(horizontal: 20),
            // problablemente creo que desde el padding hasta la columna, row, etc, tienen que tener un child y dentro de este ira su contenido fuera del child estaran las propiedades del padding
            child :Text("populares", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ), // fontSize(tamaño), fontWeight(tipo de letra, bold es negrita)               
          ),

          Expanded( //2. toma todo el tamaño disponible de que queda dispobible(en este caso  de la columna)
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // con esto ponemos la direccion a la que queremos el scroll
              itemCount: 20,
              itemBuilder: (_, int index){
                return Container( //1. el container no puede encontrar el tamaño para renderizar ya que la columna tiene un crossAxxis. lo envolvemos en un widget expanded para wue sea mas flexible
                  width: 130,
                  height: 190,
                  color: Colors.green,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                );
              },
              
              ),
          ),
        ],
      
      ),
    );
  }
}