import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/theme/vivid_presence_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Chats()),
    GoRoute(path: '/contacts', builder: (context, state) => const Contacts()),
    GoRoute(path: '/groups', builder: (context, state) => const Groups()),
    GoRoute(path: '/profile', builder: (context, state) => const Profile()),
    GoRoute(
      path: '/activeChat',
      builder: (context, state) => const ActiveChat(),
    ),
    GoRoute(path: '/newGroup', builder: (context, state) => const NewGroup()),
  ],
);
void main() {
  runApp(const FlutterVividPresence());
}

class FlutterVividPresence extends StatelessWidget {
  const FlutterVividPresence({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Vivid Presence',
      theme: VividPresenceTheme.lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}

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

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 0,
      title: 'Chats',
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Symbols.edit_square),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              onTap: () {
                context.go('activeChat');
              },
              leading: CircleAvatar(),
              title: const Text('Sarah Jenkins'),
              subtitle: const Text('The new designs look fantastic! C...'),
              trailing: Badge(label: const Text('3')),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Alex Rivera'),
              subtitle: const Text('Sound good, i\'ll send the files over...'),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Q3 Planning'),
              subtitle: const Text('You: Let\'s align on the roadmap on...'),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Marcus Kim'),
              subtitle: const Text('Thanks for the update.'),
            ),
          ],
        ),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 1,
      title: 'Contacts',
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Symbols.add),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('A'),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Alice Chen'),
              subtitle: const Text('Design Lead'),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Arthur Dent'),
              subtitle: const Text('Lats seen 2h ago'),
            ),
            const Text('B'),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Bianca Perez'),
              subtitle: const Text('Typing...'),
            ),
            const Text('E'),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Elias Thorne'),
              subtitle: const Text('Offline'),
            ),
          ],
        ),
      ),
    );
  }
}

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 2,
      title: 'Groups List',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('newGroup');
        },
        child: const Icon(Symbols.add),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Product Team'),
              subtitle: const Text('Sarah: The designs are ready for review'),
              trailing: Badge(label: const Text('3')),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Weekend Plans'),
              subtitle: const Text('Alex: What time are we meeting?'),
              trailing: const Icon(Symbols.done_all),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Family Chat'),
              subtitle: const Text('Mom: See you soon!'),
              trailing: const Icon(Symbols.done_all),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: const Text('Book Club Q3'),
              subtitle: const Text('You joined the group'),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 3,
      title: 'Profile',
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: const NetworkImage(
                'images/professional_and_friendly_headshot_of_a_young_man_in_his_late_20s_smiling_warm.png',
              ),
            ),
            const Text('Alex Rivera'),
            Chip(label: const Text('Available')),
            ListTile(
              leading: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: Colors.grey),
                child: const Icon(Symbols.key),
              ),
              title: const Text('Account'),
              subtitle: const Text('Security, keys, linked devices'),
              trailing: const Icon(Symbols.keyboard_arrow_right),
            ),
            ListTile(
              leading: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: Colors.grey),
                child: const Icon(Symbols.lock),
              ),
              title: const Text('Privacy'),
              subtitle: const Text('Visibility, blocking, read receipts'),
              trailing: const Icon(Symbols.keyboard_arrow_right),
            ),
            ListTile(
              leading: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: Colors.grey),
                child: const Icon(Symbols.notifications),
              ),
              title: const Text('Notifications'),
              subtitle: const Text('Sound, badges, do not disturb'),
              trailing: const Icon(Symbols.keyboard_arrow_right),
            ),
            ListTile(
              leading: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: Colors.grey),
                child: const Icon(Symbols.cloud),
              ),
              title: const Text('Data and Storage'),
              subtitle: const Text('Network usage, auto-download'),
              trailing: const Icon(Symbols.keyboard_arrow_right),
            ),
            ListTile(
              leading: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: Colors.grey),
                child: const Icon(Symbols.help_center),
              ),
              title: const Text('Help'),
              subtitle: const Text('FAQ, contact us, app info'),
              trailing: const Icon(Symbols.keyboard_arrow_right),
            ),
            const Text('Vivid Presence v4.2.1 (Build 8902)'),
          ],
        ),
      ),
    );
  }
}

class ActiveChat extends StatelessWidget {
  const ActiveChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: const Icon(Symbols.arrow_back),
        ),
        title: const Text('Active Chat'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [const Text('Chat')],
        ),
      ),
    );
  }
}

class NewGroup extends StatelessWidget {
  const NewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/groups');
          },
          icon: const Icon(Symbols.arrow_back),
        ),
        title: const Text('New Group'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [const Text('New Group')],
        ),
      ),
    );
  }
}
