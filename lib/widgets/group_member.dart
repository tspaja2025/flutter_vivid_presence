import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class GroupMember extends StatelessWidget {
  final String name;
  final ImageProvider? image;
  final bool isCurrentUser;

  const GroupMember({
    super.key,
    required this.name,
    this.image,
    this.isCurrentUser = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: colorScheme.surfaceContainerHighest,
          backgroundImage: image,
          child: image == null
              ? Icon(
                  Symbols.person,
                  size: 24,
                  color: colorScheme.onSurfaceVariant,
                )
              : null,
        ),
        const SizedBox(height: 10),
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
