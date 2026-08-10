import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

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
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Symbols.add_a_photo),
                  ),
                  const Text('Set Group Photo'),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: const Text('Group Name'),
                hintText: 'e.g. Weekend Getaway',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: const Text('Description'),
                hintText: 'What\'s this group about? (optional)',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              maxLines: 3,
            ),
            Row(
              children: [
                const Text('Members'),
                const Text('4'),
                const Spacer(),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(Symbols.person_add),
                ),
              ],
            ),
            Row(
              children: [
                Column(children: [CircleAvatar(), const Text('You')]),
                Column(children: [CircleAvatar(), const Text('Alice')]),
                Column(children: [CircleAvatar(), const Text('Bianca')]),
                Column(children: [CircleAvatar(), const Text('Charlie')]),
              ],
            ),
            FilledButton.icon(
              onPressed: () {},
              iconAlignment: IconAlignment.end,
              icon: const Icon(Symbols.group_add),
              label: const Text('Create Group'),
            ),
          ],
        ),
      ),
    );
  }
}
