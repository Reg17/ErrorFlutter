//import 'dart:html';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';



class DeslizadorTarjetas extends StatelessWidget{


  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size; 

    return Container(

      width: double.infinity,  
      height: size.height * 0.5, 
      color: Colors.white,
      child: Swiper( 
      itemCount: 10, 
      layout: SwiperLayout.STACK,
      itemWidth: size.width * 0.6,
      itemHeight: size.height * 0.9, 
      
      itemBuilder: ( _ , int index){ 
   
       
        return GestureDetector( 
          onTap: () => Navigator.pushNamed(context, "Pagina para detalles", arguments: "Instancias de peliculas"),
          child: ClipRRect( 
            borderRadius: BorderRadius.circular(20), 
            child: const FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"), 
              image: NetworkImage("https://via.placeholder.com/300*340"),
              fit: BoxFit.cover,
            ),
          ),
        );
   
        
      }
      ),
  );

  }
}