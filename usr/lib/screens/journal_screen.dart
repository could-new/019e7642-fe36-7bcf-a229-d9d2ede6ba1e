import 'package:flutter/material.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Journal'),
        actions: [
          IconButton(icon: const Icon(Icons.calendar_today), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'What are you grateful for today?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Write your thoughts here...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.mic, color: Colors.grey),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Save Entry'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Previous Entries',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              children: [
                _buildJournalEntry('Today', 'Feeling much better after taking a walk...'),
                _buildJournalEntry('Yesterday', 'Stressed about the upcoming presentation, but managed to...'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJournalEntry(String date, String preview) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(date, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(preview, maxLines: 2, overflow: TextOverflow.ellipsis),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}