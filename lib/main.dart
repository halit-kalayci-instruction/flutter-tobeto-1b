import 'package:flutter/material.dart';

// auto execute
void main() {
  // flutter'ı initialize eden runApp

  // Widget => en küçükten en büyüğe giden şablonlar

  // named & unnamed parameters

  // constant
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 57, 7, 96), // Configuration Widget
        body: Center(
          child: Text("Merhaba Tobeto",
              style: TextStyle(fontSize: 38, color: Colors.white)),
        ),
      ),
    ),
  );
}

// resminiz => Flutter uygulamasına resim eklenmesi
// İsim Soyisim
// Tobeto - Mobil Geliştirme - 1B
// Günün tarihi (statik) 31.10.2023

// intelisense => ctrl + space 
// mac => cmnd + i


// SHIFT + ALT + F
// sağ tık - format document


// Stateless => UI
// Stateful => Dynamic UI