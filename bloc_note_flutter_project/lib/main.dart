import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bloc-Note',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD4C4), // Couleur de fond #FFD4C4
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'bloc_note_flutter_project/assets/images/myNote_icon.png', // Chemin de l'image
              width: 100, // Largeur de l'image
              height: 100, // Hauteur de l'image
            ),
            const SizedBox(height: 20), // Espacement entre l'image et le texte
            Text(
              'MY BLOC-NOTE',
              style: TextStyle(
                fontSize: 24, // Taille de la police
                fontWeight: FontWeight.bold, // Gras
                color: Colors.black, // Couleur du texte
              ),
            ),
          ],
        ),
      ),
    );
  }
}
