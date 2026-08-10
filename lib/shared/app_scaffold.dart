import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class AppScaffold extends StatefulWidget {
  final int currentIndex;
  final String title;
  final Widget? floatingActionButton;
  final Widget child;

  const AppScaffold({
    super.key,
    required this.currentIndex,
    required this.title,
    this.floatingActionButton,
    required this.child,
  });

  @override
  State<AppScaffold> createState() => _AppScaffold();
}

class _AppScaffold extends State<AppScaffold> {
  void _onDestinationSelected(int index) {
    if (index == widget.currentIndex) return;

    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/contacts');
        break;
      case 2:
        context.go('/groups');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: UnconstrainedBox(
          child: CircleAvatar(
            child: Image.asset(
              'images/vivid_presence_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(widget.title),
        actionsPadding: const EdgeInsets.only(right: 8),
        actions: [
          const Icon(Symbols.search, size: 28),
          const SizedBox(width: 12),
          CircleAvatar(
            backgroundImage: const NetworkImage(
              'images/professional_and_friendly_headshot_of_a_young_man_in_his_late_20s_smiling_warm.png',
            ),
          ),
        ],
      ),
      floatingActionButton: widget.floatingActionButton,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onDestinationSelected,
        selectedIndex: widget.currentIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Symbols.chat_bubble),
            icon: Icon(Symbols.chat_bubble),
            label: 'Chats',
          ),
          NavigationDestination(
            selectedIcon: Icon(Symbols.person),
            icon: Icon(Symbols.person),
            label: 'Contacts',
          ),
          NavigationDestination(
            selectedIcon: Icon(Symbols.people),
            icon: Icon(Symbols.people),
            label: 'Groups',
          ),
          NavigationDestination(
            selectedIcon: Icon(Symbols.settings),
            icon: Icon(Symbols.settings),
            label: 'Profile',
          ),
        ],
      ),
      body: widget.child,
    );
  }
}
