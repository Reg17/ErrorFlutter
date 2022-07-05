import 'package:flutter/material.dart';

class PaginaDetalles extends StatelessWidget {
//  const PaginaDetalles({Key? key}) : super(key: key); // el key sirve para identificar el widget de manera independiente o especifica // por el momento no se va a usar 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: const Center(
        child: Text("Pagina para Detalles") ,),
    )
    );
  }
}