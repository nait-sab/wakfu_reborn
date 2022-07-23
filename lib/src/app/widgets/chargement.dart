import 'package:flutter/material.dart';

class Chargement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size ecran = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: ecran.width * 0.4,
        height: ecran.width * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Récupération des données",
              style: TextStyle(
                color: Colors.white,
                fontSize: ecran.width * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              color: Colors.blue[400],
              strokeWidth: 8,
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
