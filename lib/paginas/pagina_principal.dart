import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class PaginaPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peliculas en Cines"),
      elevation: 0, // modificacion de la elevacion // con el 0 lo dejamos sin elevacion y sin sombra
      actions: [ // con las actions // ponemos opciones para botones y logos en la barra
        IconButton(
          icon: Icon(Icons.search_outlined),
          onPressed: (){},

        )       
      ],
      ),
      
      body:Column( // ponemos una columna para que los widgets de cartas esten una abajo de otra
        children:  [
          
          DeslizadorTarjetas()
  
        ],
      )
    );
    
  }
    

}