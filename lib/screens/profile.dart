import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:material_symbols_icons/symbols.dart';

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
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: const NetworkImage(
                      'images/professional_and_friendly_headshot_of_a_young_man_in_his_late_20s_smiling_warm.png',
                    ),
                  ),
                  const Text('Alex Rivera'),
                  DropdownMenu(
                    hintText: 'Available',
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: 'available', label: 'Available'),
                      DropdownMenuEntry(value: 'busy', label: 'Busy'),
                      DropdownMenuEntry(value: 'offline', label: 'Offline'),
                    ],
                  ),
                ],
              ),
            ),
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
