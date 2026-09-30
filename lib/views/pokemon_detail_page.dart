import 'package:flutter/material.dart';

import '../models/pokemon.dart';
import '../widgets/network_photo.dart';
import '../widgets/tag_chip.dart';

class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF7FF),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        // tombol back otomatis (kembali ke Home Page)
        title: Text(
          pokemon.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: NetworkPhoto(
                url: pokemon.image,
                height: 220,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Pokemon Details:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _InfoRow(label: 'Name', value: pokemon.name),
            _InfoRow(label: 'Type', value: pokemon.type),
            _InfoRow(label: 'Height', value: '${pokemon.height} cm'),
            _InfoRow(label: 'Weight', value: '${pokemon.weight} kg'),
            const SizedBox(height: 16),
            const _SectionTitle('Pokemon Abilities'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: pokemon.ability
                  .map((h) => TagChip(label: h, small: false))
                  .toList(),
            ),
            const SizedBox(height: 16),
            const _SectionTitle('Pokemon Ability'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: pokemon.ability
                  .map((a) => TagChip(label: a, small: false))
                  .toList(),
                  .map((a) => TagChip(label: a, small: false))
                  .toList(),
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali ke Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;

  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(label, style: TextStyle(color: Colors.grey.shade700)),
          ),
          const Text(': '),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
