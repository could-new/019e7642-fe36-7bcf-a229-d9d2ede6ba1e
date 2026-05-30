import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MindSpace Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning!',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              const Text('How are you feeling today?'),
              const SizedBox(height: 16),
              _buildMoodTracker(),
              const SizedBox(height: 24),
              _buildDailyProgress(context),
              const SizedBox(height: 24),
              _buildQuickActions(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMoodTracker() {
    final moods = ['😢', '😕', '😐', '🙂', '😁'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: moods.map((emoji) {
        return InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(24),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Text(
              emoji,
              style: const TextStyle(fontSize: 32),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDailyProgress(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Wellness Score',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Mindfulness'),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.white.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Journaling'),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: 0.4,
                        backgroundColor: Colors.white.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Actions',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            int columns = constraints.maxWidth > 600 ? 4 : 2;
            return GridView.count(
              crossAxisCount: columns,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.5,
              children: [
                _buildActionCard(
                  context,
                  title: 'Breathe',
                  icon: Icons.air,
                  color: Colors.blue.shade100,
                ),
                _buildActionCard(
                  context,
                  title: 'Meditate',
                  icon: Icons.self_improvement,
                  color: Colors.purple.shade100,
                ),
                _buildActionCard(
                  context,
                  title: 'Journal',
                  icon: Icons.edit,
                  color: Colors.orange.shade100,
                ),
                _buildActionCard(
                  context,
                  title: 'Sleep Sounds',
                  icon: Icons.nights_stay,
                  color: Colors.indigo.shade100,
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildActionCard(BuildContext context, {required String title, required IconData icon, required Color color}) {
    return Card(
      elevation: 0,
      color: color,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 32, color: Colors.black87),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
