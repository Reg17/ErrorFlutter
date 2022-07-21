import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peliculas en Cines"),
      elevation: 0, 
      actions: [ 
        IconButton(
          icon: const Icon(Icons.search_outlined),
          onPressed: (){},

        )       
      ],
      ),
      

      body:  SingleChildScrollView(
        child: Column( 
        children:  [
          
          DeslizadorTarjetas(),
          DeslizadorPeliculas(),
          

  
        ],

      ),
      )
    );
    
  }
    

}