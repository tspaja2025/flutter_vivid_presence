import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:flutter_vivid_presence/widgets/profile_tile.dart';
import 'package:material_symbols_icons/symbols.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return AppScaffold(
      currentIndex: 3,
      title: 'Profile',
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildProfileHeader(context),
            ProfileTile(
              icon: Symbols.key,
              title: 'Account',
              subtitle: 'Security, keys, linked devices',
              trailing: null,
            ),
            const SizedBox(height: 16),
            ProfileTile(
              icon: Symbols.lock,
              title: 'Privacy',
              subtitle: 'Visibility, blocking, read receipts',
              trailing: null,
            ),
            const SizedBox(height: 16),
            ProfileTile(
              icon: Symbols.notifications,
              title: 'Notifications',
              subtitle: 'Sound, badges, do not disturb',
              trailing: null,
              showNotificationDot: true,
            ),
            const SizedBox(height: 16),
            ProfileTile(
              icon: Symbols.cloud,
              title: 'Data and Storage',
              subtitle: 'Network usage, auto-download',
              trailing: null,
            ),
            const SizedBox(height: 16),
            ProfileTile(
              icon: Symbols.help_center,
              title: 'Help',
              subtitle: 'FAQ, contact us, app info',
              trailing: null,
            ),
            const SizedBox(height: 16),
            Text(
              'Vivid Presence v4.2.1 (Build 8902)',
              textAlign: TextAlign.center,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.surfaceContainerHighest,
                ),
                padding: const EdgeInsets.all(4),
                child: const CircleAvatar(
                  radius: 76,
                  backgroundImage: AssetImage(
                    'images/professional_and_friendly_headshot_of_a_young_man_in_his_late_20s_smiling_warm.png',
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 2,
                child: IconButton.filled(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: colorScheme.primary,
                    foregroundColor: colorScheme.onPrimary,
                    fixedSize: const Size(44, 44),
                  ),
                  icon: const Icon(Symbols.edit, size: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Alex Rivera',
            style: textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          DropdownMenu(
            hintText: 'Available',
            dropdownMenuEntries: [
              DropdownMenuEntry(
                value: 'available',
                leadingIcon: Badge(
                  smallSize: 12,
                  backgroundColor: colorScheme.secondaryContainer,
                ),
                label: 'Available',
              ),
              DropdownMenuEntry(
                value: 'busy',
                leadingIcon: Badge(
                  smallSize: 12,
                  backgroundColor: colorScheme.tertiary,
                ),
                label: 'Busy',
              ),
              DropdownMenuEntry(
                value: 'offline',
                leadingIcon: Badge(
                  smallSize: 12,
                  backgroundColor: colorScheme.surfaceContainerHighest,
                ),
                label: 'Offline',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
