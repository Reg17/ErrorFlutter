import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peliculas en Cines"),
      elevation: 0, // modificacion de la elevacion // con el 0 lo dejamos sin elevacion y sin sombra
      actions: [ // con las actions // ponemos opciones para botones y logos en la barra
        IconButton(
          icon: const Icon(Icons.search_outlined),
          onPressed: (){},

        )       
      ],
      ),
      

      body:  SingleChildScrollView(//2. el SingleChildScrollView permite hacer scroll // el SingleChildScrollView fue sacado de la columna
        child: Column( //1.  ponemos una columna para que los widgets de cartas esten una abajo de otra // la columna fue envuelta en un SingleChildScrollView 
        children:  [
          
          DeslizadorTarjetas(),
          DeslizadorPeliculas(),
          

  
        ],

      ),
      )
    );
    
  }
    

}