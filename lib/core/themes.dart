// burada temalandirma renk etc yazilacakmis
import 'package:flutter/material.dart';
//import 'package:flutter_app/core/constants.dart';
import 'package:google_fonts/google_fonts.dart';

const colors = {"primary": Color.fromARGB(255, 18, 137, 153),
 "secondary": Color.fromARGB(255, 255, 255, 255),
 "onprimary": Color.fromARGB(255, 18, 137, 153),
 "onSecondary":Color.fromARGB(255, 255, 255, 255),
 "surface":Color.fromARGB(255, 255, 255, 255),
 "onsurface":Color.fromARGB(255, 18, 137, 153),   

};
const darkColors = {"primary": Color.fromARGB(255, 18, 137, 153),
 "secondary": Color.fromARGB(255, 255, 255, 255),
 "onprimary": Color.fromARGB(255, 18, 137, 153),
 "onSecondary":Color.fromARGB(255, 255, 255, 255),
 "surface":Color.fromARGB(255, 18, 137, 153),
 "onsurface":Color.fromARGB(255, 255, 255, 255),

};

 
final Lighttheme = ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(). copyWith(
         titleMedium:   GoogleFonts.lato(
        textStyle: TextStyle(
         color: colors["onSurface"],

      
      ),
    ),
  ),
);

     final darkTheme =  ThemeData(
      brightness:Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: GoogleFonts.latoTextTheme(). copyWith(
      titleSmall: GoogleFonts.lato(
        textStyle: TextStyle(
         color: darkColors["onSurface"],

      ),
    ),
   titleLarge: GoogleFonts.lato(
   textStyle: TextStyle(
    color: darkColors["onSurface"],
    )
   ),

   titleMedium: GoogleFonts.lato(
   textStyle: TextStyle(
    color: darkColors["onSurface"],
    )
   ),

    bodySmall: GoogleFonts.lato(
   textStyle: TextStyle(
    color: darkColors["onSurface"],
    )
   ),
 
  bodyMedium: GoogleFonts.lato(
   textStyle: TextStyle(
    color: darkColors["onSurface"],
    )
   ),

  bodyLarge: GoogleFonts.lato(
   textStyle: TextStyle(
    color: darkColors["onSurface"],
    )
   ),


  )
);
  

