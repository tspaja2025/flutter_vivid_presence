import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

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
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(),
                  Badge(smallSize: 12, backgroundColor: Colors.green),
                ],
              ),
              title: const Text('Sarah Jenkins'),
              subtitle: const Text('The new designs look fantastic! C...'),
              trailing: Badge(label: const Text('3')),
            ),
            ListTile(
              onTap: () {
                context.go('activeChat');
              },
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(),
                  Badge(smallSize: 12, backgroundColor: Colors.green),
                ],
              ),
              title: const Text('Alex Rivera'),
              subtitle: const Text('Sound good, i\'ll send the files over...'),
            ),
            ListTile(
              onTap: () {
                context.go('activeChat');
              },
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(),
                  CircleAvatar(radius: 16, backgroundColor: Colors.green),
                ],
              ),
              title: const Text('Q3 Planning'),
              subtitle: const Text('You: Let\'s align on the roadmap on...'),
            ),
            ListTile(
              onTap: () {
                context.go('activeChat');
              },
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
