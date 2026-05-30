import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'mindfulness_screen.dart';
import 'journal_screen.dart';
import 'ai_coach_screen.dart';
import 'community_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const DashboardScreen(),
    const MindfulnessScreen(),
    const JournalScreen(),
    const AiCoachScreen(),
    const CommunityScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // For wider screens, we might use a NavigationRail or Drawer.
    // For simplicity and mobile-first, using BottomNavigationBar with a LayoutBuilder check.
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  selectedIndex: _currentIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home_outlined),
                      selectedIcon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.self_improvement_outlined),
                      selectedIcon: Icon(Icons.self_improvement),
                      label: Text('Mindful'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.book_outlined),
                      selectedIcon: Icon(Icons.book),
                      label: Text('Journal'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.chat_bubble_outline),
                      selectedIcon: Icon(Icons.chat_bubble),
                      label: Text('Coach'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.people_outline),
                      selectedIcon: Icon(Icons.people),
                      label: Text('Community'),
                    ),
                  ],
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(child: _screens[_currentIndex]),
              ],
            ),
          );
        }

        return Scaffold(
          body: _screens[_currentIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: _currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.self_improvement_outlined),
                selectedIcon: Icon(Icons.self_improvement),
                label: 'Mindful',
              ),
              NavigationDestination(
                icon: Icon(Icons.book_outlined),
                selectedIcon: Icon(Icons.book),
                label: 'Journal',
              ),
              NavigationDestination(
                icon: Icon(Icons.chat_bubble_outline),
                selectedIcon: Icon(Icons.chat_bubble),
                label: 'Coach',
              ),
              NavigationDestination(
                icon: Icon(Icons.people_outline),
                selectedIcon: Icon(Icons.people),
                label: 'Community',
              ),
            ],
          ),
        );
      },
    );
  }
}
