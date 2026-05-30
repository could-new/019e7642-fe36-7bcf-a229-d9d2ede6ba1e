import 'package:flutter/material.dart';

class MindfulnessScreen extends StatelessWidget {
  const MindfulnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mindfulness'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Guided Sessions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildSessionCard('Morning Clarity', '5 min • Focus', Icons.wb_sunny, Colors.orange.shade100),
          const SizedBox(height: 12),
          _buildSessionCard('Deep Breathing', '3 min • Stress Relief', Icons.air, Colors.blue.shade100),
          const SizedBox(height: 12),
          _buildSessionCard('Sleep Wellness', '10 min • Relaxation', Icons.nightlight_round, Colors.indigo.shade100),
        ],
      ),
    );
  }

  Widget _buildSessionCard(String title, String subtitle, IconData icon, Color color) {
    return Card(
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.black87),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.play_circle_fill, size: 36, color: Colors.green),
      ),
    );
  }
}