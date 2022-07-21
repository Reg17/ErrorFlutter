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
        crossAxisAlignment: CrossAxisAlignment.start, 
        children:  [
        
          const Padding( 
            padding: EdgeInsets.symmetric(horizontal: 20),
            
            child :Text("populares", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ),             
          ),

          const SizedBox(height: 5,),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => const _PosterPeliculas()
            ),
          ),
        ],
      
      ),
    );
  }
}


class _PosterPeliculas extends StatelessWidget { 
  const _PosterPeliculas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: 130,
      height: 190,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children:   [
          
          GestureDetector(
            onTap: ()=> Navigator.pushNamed(context, "Pagina para detalles", arguments: "Instancias de peliculas"),
            child: 
           
            ClipRRect( 
              borderRadius: BorderRadius.circular(20), 
              child: const FadeInImage(  
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/300*400"),
              width:130,
              height: 190,
              fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 5,),


          const Text("Stars War El retorno del jedi",
            maxLines: 2,
            overflow: TextOverflow.ellipsis, 
            textAlign: TextAlign.center,
          ), 
          
        ],

      ),
    
    )
    ;
  }
}