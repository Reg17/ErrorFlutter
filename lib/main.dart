import 'package:flutter/material.dart';
import 'package:peliculas/paginas/paginas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Películas",
      initialRoute: "Pagina Principal",
      routes: {
        "Pagina Principal": ( _ ) => PaginaPrincipal(), // dentro de los parentesis deberia de estar el buildContext pero no se necesita
        "Pagina para detalles": ( _ )=> PaginaDetalles(),        
      },
      theme: ThemeData.light().copyWith( // cabiamos el tema  para toda la app en el main
        appBarTheme: const AppBarTheme( 
          color: Colors.green
        )
      ), 
    );
  }
}