import 'package:bloc_note_flutter_project/screens/NoteFree.dart';
import 'package:flutter/material.dart';

class ConnecionPlans extends StatefulWidget {
  const ConnecionPlans({Key? key}) : super(key: key);

  @override
  State<ConnecionPlans> createState() => _ConnecionPlansState();
}

class _ConnecionPlansState extends State<ConnecionPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plans de Connexion'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildPlanCard(
              title: 'Plan Gratuit',
              description: 'Les notes sont sauvegardées localement',
              price: 'Gratuit',
              buttonLabel: "C'est parti", // Bouton "C'est parti" pour le plan gratuit
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NoteFree()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildPlanCard(
              title: 'Plan Mensuel',
              description: 'Les notes sont sauvegardées sur le cloud, 200 Go d\'espace',
              price: '\$30/mois',
              buttonLabel: "Payer", // Bouton "Payer" pour le plan mensuel
              onPressed: () {
                // Action à effectuer lorsqu'on appuie sur le bouton "Payer" pour le plan mensuel
              },
            ),
            SizedBox(height: 20),
            _buildPlanCard(
              title: 'Plan Annuel',
              description: 'Les notes sont sauvegardées sur le cloud, 800 Go d\'espace',
              price: '\$200/an',
              buttonLabel: "Payer", // Bouton "Payer" pour le plan annuel
              onPressed: () {
                // Action à effectuer lorsqu'on appuie sur le bouton "Payer" pour le plan annuel
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFFFD4CA), // Couleur de fond spécifique à la page ConnecionPlans
    );
  }

  Widget _buildPlanCard({required String title, required String description, required String price, required String buttonLabel, required VoidCallback onPressed}) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Prix: $price',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: onPressed, // Utilisation de la fonction onPressed passée en paramètre
              child: Text(buttonLabel), // Utilisation du texte du bouton passé en paramètre
            ),
          ],
        ),
      ),
    );
  }
}