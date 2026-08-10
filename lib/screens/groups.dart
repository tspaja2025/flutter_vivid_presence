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
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundImage: const NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuDCfvkgur34ETaLrzOSBiI3pnxu_MlMQZrk_XSlhNwoYLBGHtgBXqbWtowncdueAh66vupA-CJPoh0ChxmHTS363pD5TOXGUeLfMnBmPHnX3gMKqEHD5BQWaZvYjQUFOHJoCwRAT2iT4cZjdlg6bLp2NohZg8Fpo3VPYdm2-WdDxPjQsuD5sGNSPUsPG71RIRtlAJfWGvYVkWgVQXGR7hfirim0c_huKWXfR98IhQAWIpV8dZ31maXe',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Badge(
                      smallSize: 12,
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                    ),
                  ),
                ],
              ),
              title: const Text('Product Team'),
              subtitle: const Text('Sarah: The designs are ready for review'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '10:42 AM',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 4),
                  Badge(
                    label: const Text('3'),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: const NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuAQhvJIxsvNEukEQ5Lg1SR6sjMhmOU8xY94j9ECV9DHZuCt4Y5RIK2Rf09AAFGYBCiCe-3a6Ce7i1n3s8hGMHodu-MYi5GKx7IrdHJ7B7UIM5BgvCQJU462mEFrmuj2qwfuzOY-IueRbLQJhwzhHcGg8Wc6pMSfAkxsNvdnNj9_bd5Wk7XungnCLUzCl-hGFwAaCd8yeerWRcGXz3FnC--DoPBMBCjlbOV3thgWuSe2u-2-LuFlHrXp',
                ),
              ),
              title: const Text('Weekend Plans'),
              subtitle: const Text('Alex: What time are we meeting?'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Yesterday',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 4),
                  const Icon(Symbols.done_all),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: const NetworkImage('')),
              title: const Text('Family Chat'),
              subtitle: const Text('Mom: See you soon!'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Tuesday',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 4),
                  const Icon(Symbols.done_all),
                ],
              ),
            ),
            ListTile(
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(child: const Icon(Symbols.menu_book)),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: const Icon(Symbols.notifications_off, size: 16),
                  ),
                ],
              ),
              title: const Text('Book Club Q3'),
              subtitle: const Text('You joined the group'),
              trailing: Text(
                'Oct 12',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
