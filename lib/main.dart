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
        "Pagina Principal": ( _ ) => PaginaPrincipal(), 
        "Pagina para detalles": ( _ )=> PaginaDetalles(),        
      },
      theme: ThemeData.light().copyWith( 
        appBarTheme: const AppBarTheme( 
          color: Colors.green
        )
      ), 
    );
  }
}