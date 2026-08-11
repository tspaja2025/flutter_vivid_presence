import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:flutter_vivid_presence/widgets/chat_list_tile.dart';
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
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          ChatListTile(
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuDCfvkgur34ETaLrzOSBiI3pnxu_MlMQZrk_XSlhNwoYLBGHtgBXqbWtowncdueAh66vupA-CJPoh0ChxmHTS363pD5TOXGUeLfMnBmPHnX3gMKqEHD5BQWaZvYjQUFOHJoCwRAT2iT4cZjdlg6bLp2NohZg8Fpo3VPYdm2-WdDxPjQsuD5sGNSPUsPG71RIRtlAJfWGvYVkWgVQXGR7hfirim0c_huKWXfR98IhQAWIpV8dZ31maXe',
            ),
            name: 'Product Team',
            message: 'Sarah: The designs are ready for review',
            time: '10:42 AM',
            unreadCount: 3,
            isOnline: true,
          ),
          ChatListTile(
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuAQhvJIxsvNEukEQ5Lg1SR6sjMhmOU8xY94j9ECV9DHZuCt4Y5RIK2Rf09AAFGYBCiCe-3a6Ce7i1n3s8hGMHodu-MYi5GKx7IrdHJ7B7UIM5BgvCQJU462mEFrmuj2qwfuzOY-IueRbLQJhwzhHcGg8Wc6pMSfAkxsNvdnNj9_bd5Wk7XungnCLUzCl-hGFwAaCd8yeerWRcGXz3FnC--DoPBMBCjlbOV3thgWuSe2u-2-LuFlHrXp',
            ),
            name: 'Weekend Plans',
            message: 'Alex: What time are we meeting?',
            messageIcon: const Icon(Symbols.done_all, size: 16),
            time: 'Yesterday',
          ),
          ChatListTile(
            avatar: null,
            name: 'Family Chat',
            message: 'Mom: See you soon!',
            messageIcon: const Icon(Symbols.done_all, size: 16),
            time: 'Tuesday',
          ),
          ChatListTile(
            avatar: null,
            name: 'Book Club Q3',
            message: 'You joined the group',
            time: 'Oct 12',
          ),
        ],
      ),
    );
  }
}
