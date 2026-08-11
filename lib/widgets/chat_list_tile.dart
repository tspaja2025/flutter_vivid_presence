import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final ImageProvider? avatar;
  final int? unreadCount;
  final bool isOnline;
  final bool isGroup;
  final Widget? messageIcon;
  final ImageProvider? secondaryAvatar;
  final VoidCallback? onTap;

  const ChatListTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.avatar,
    this.unreadCount,
    this.isOnline = false,
    this.isGroup = false,
    this.messageIcon,
    this.secondaryAvatar,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 76,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        leading: _buildAvatar(context),
        title: Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        subtitle: Row(
          children: [
            if (messageIcon != null) ...[
              messageIcon!,
              const SizedBox(width: 4),
            ],
            Expanded(
              child: Text(
                message,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              time,
              style: textTheme.labelSmall?.copyWith(
                color: unreadCount != null
                    ? colorScheme.primary
                    : colorScheme.onSurfaceVariant,
                fontWeight: unreadCount != null
                    ? FontWeight.w600
                    : FontWeight.normal,
              ),
            ),
            if (unreadCount != null) ...[
              const SizedBox(height: 6),
              Container(
                width: 20,
                height: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primary,
                ),
                child: Text(
                  '$unreadCount',
                  style: textTheme.labelSmall?.copyWith(
                    color: colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget avatarWidget = CircleAvatar(
      radius: 24,
      backgroundImage: avatar,
      child: avatar == null ? const Text('MK') : null,
    );

    if (secondaryAvatar != null) {
      return SizedBox(
        width: 52,
        height: 52,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            avatarWidget,
            Positioned(
              right: -2,
              bottom: -2,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.surface,
                ),
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  radius: 13,
                  backgroundImage: secondaryAvatar,
                ),
              ),
            ),
          ],
        ),
      );
    }

    if (isOnline) {
      return SizedBox(
        width: 48,
        height: 48,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            avatarWidget,
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme.surface,
              ),
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return avatarWidget;
  }
}
