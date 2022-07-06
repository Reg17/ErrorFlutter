import 'dart:html';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

// el context sabe tod lo relacionado sabe todo el arbol de widgets 

class DeslizadorTarjetas extends StatelessWidget{
  const DeslizadorTarjetas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

// el MediaQuery nos da informacion sobre el telefono (SO, marca, ancho, alto, etc)
    final size = MediaQuery.of(context).size; // el size nos da el width, y height.

    return Container(

      width: double.infinity,  // va a tomar todo al ancho posbile dependiendo en el padre (en este caso el padre es una columna)
      height: size.height * 0.5, // escogeos el 50% del alto del alto
      child: Swiper( // este widget tiene las propiedades para el widget de deslizamiento de imagenes
      itemCount: 10, // la cantidad de tarjeta que se quiere manejar
      layout: SwiperLayout.STACK,
      itemWidth: size.width * 0.6,// el 60% del ancho del swiper
      itemHeight: size.height * 0.9, // el 90% del alto del swiper
      // el builder es algo que se constuyede manera dinamica o cuando sea necesario
      itemBuilder: ( _, int index){ // la funcion itemBuilder se dispara para constuir el widget. se ppçone el guion bajo si no se va a utilizar el BuildContext
        
        return GestureDetector( // este contiene l onTap el cual si se toca el widget nos manda a otra pagina
          onTap: () => Navigator.pushNamed(context, "Pagina para detalles", arguments: "Instancias de peliculas"),
          child: ClipRRect( // 3. los borrdes los hace redondeado // fue sacado de la envoltura de el FadeInImage
            borderRadius: BorderRadius.circular(20), // 2. ponermos el tipi de ClipRRect que queremos y su tamaño
            child: const FadeInImage( // 1. con esto se hace una animacion de entrada a la pantalla // lo envovimos en un widget ClipRReact
              placeholder: NetworkImage("assets/no-image.jpg"), 
              image: NetworkImage("https://via.placeholder.com/300x400"),
              fit: BoxFit.cover, // el fit adapta la imagen al tamaño del contenedor
            ),
          ),
        );

      }
      ),
  );

  }
}