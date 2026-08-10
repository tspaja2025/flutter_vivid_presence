import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:material_symbols_icons/symbols.dart';

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
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Symbols.search),
                hintText: 'Search contacts...',
              ),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              icon: const Icon(Symbols.sync),
              label: const Text('Sync Phone Contacts'),
            ),
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
