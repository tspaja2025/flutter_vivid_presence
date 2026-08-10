import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

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
