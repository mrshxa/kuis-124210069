import 'package:flutter/material.dart';

import '../data/pokemons_data.dart';
import '../models/pokemon.dart';
import '../widgets/network_photo.dart';
import '../widgets/tag_chip.dart';
import 'pokemon_detail_page.dart';
import 'login_page.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF7FF),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Profil Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: NetworkPhoto(
                url:
                    'https://archives.bulbagarden.net/media/upload/1/1f/Sword_Shield_Victor.png',
                height: 220,
                width: 220,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Nama : Msha',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

              GestureDetector onTap(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }     "https://archives.bulbagarden.net/media/upload/c/cd/Sword_Shield_Gloria.png or https://archives.bulbagarden.net/media/upload/1/1f/Sword_Shield_Victor.png"
            ),
            
            const SizedBox(height: 8),
            const Text(
              "Saya bersumpah
mengerjakan soal kuis ini dengan cara yang jujur dan tidak curang dengan cara
apapun" 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ), // posisikan di center
          ],
        ),
      ),
    );

  }


  button(
    onPressed: () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
        (route) => false,
      );
    },
    child: const Text('Logout'),
  );