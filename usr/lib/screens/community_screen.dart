import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Support'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildChallengeCard(),
          const SizedBox(height: 24),
          const Text(
            'Discussion Groups',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          _buildGroupCard('Anxiety Support', '1.2k members', Icons.favorite),
          _buildGroupCard('Mindful Beginners', '850 members', Icons.eco),
          _buildGroupCard('Sleep Better', '2.3k members', Icons.bedtime),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }

  Widget _buildChallengeCard() {
    return Card(
      color: Colors.green.shade50,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.green.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                const SizedBox(width: 8),
                Text(
                  'Daily Challenge',
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Share one positive thing that happened today with the community.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Share Now'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGroupCard(String title, String subtitle, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, color: Colors.black54),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: OutlinedButton(
          onPressed: () {},
          child: const Text('Join'),
        ),
      ),
    );
  }
}