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

          const SizedBox(height: 5,),

          Expanded( //2. toma todo el tamaño disponible de que queda dispobible(en este caso  de la columna)
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // con esto ponemos la direccion a la que queremos el scroll
              itemCount: 20,
              itemBuilder: (_, int index) => const _PosterPeliculas()
            ),
          ),
        ],
      
      ),
    );
  }
}

// dado que el widget container de la clase pricipal se esta haciendo grande separamos los archivos y tambien los podemos reutilizar en este archivo
class _PosterPeliculas extends StatelessWidget { // lo dejamos en privado para que solo se ocupe en este archivo
  const _PosterPeliculas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( //1. el container no puede encontrar el tamaño para renderizar ya que la columna tiene un crossAxxis. lo envolvemos en un widget expanded para wue sea mas flexible
      width: 130,
      height: 190,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children:   [
          // 3. el GestureDetector fue sacado de la envoltura del clipRRect
          GestureDetector(
            onTap: ()=> Navigator.pushNamed(context, "Pagina para detalles", arguments: "Instancias de peliculas"),
            child: 
           //2. el ClipRRect fue sacado de la evoltura del FadeInImage. // y fue envuelto en un widget GestureDetection
            ClipRRect( // entre las propiedades de este eta ela  modificacion del border radious
              borderRadius: BorderRadius.circular(20), // el borderRadius solo esta disonible con el ClipRRect
              child: const FadeInImage(  // 1. lo envolvimod en un widget llamado clipRRect
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/300*400"),
              width:130,
              height: 190,
              fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 5,),

// si el texto es muy largo, va a dar error porque no se  pude renderizar en la pantalla
          const Text("Stars War El retorno del jedi",
            maxLines: 2, // esto nos crea las lineas que queramos poner en caso de que no haya mas espacio
            overflow: TextOverflow.ellipsis, // esto nos pone los tres puntos " ... " indicando que todavia hay mas texto
            textAlign: TextAlign.center,
          ), 
          
        ],

      ),
    
    )
    ;
  }
}