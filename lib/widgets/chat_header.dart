import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: SizedBox(
        width: 48,
        height: 48,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: const NetworkImage(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuA8jzv-hiFHiVDyeww-PC11pgB0xaZ0qN5CH_hK1c6HS95FDXd0c29JyPeX2fV1UpnYJfyuVhz_o8e25aMwBnylx5MaLeQ52cRCg4KZdmC5InE2n88SYEm4oe7_dqrq2k0jJFbDz0TKwMj7S0MFT-bB7YmNAUfN-lGJmhRCyebNknsjidopOGFPba_dXrsnJa8qa34c-Z9scNA1aF05BU_QB_mwth5XK5okEllhBMJPyC9IN1xFs-MZ',
              ),
            ),
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
      ),
      title: Text(
        'Sarah Jenkins',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        'Online',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: textTheme.bodyMedium?.copyWith(color: colorScheme.secondary),
      ),
      trailing: SizedBox(
        width: 144,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Symbols.video_call)),
            IconButton(onPressed: () {}, icon: const Icon(Symbols.phone)),
            IconButton(onPressed: () {}, icon: const Icon(Symbols.more_vert)),
          ],
        ),
      ),
    );
  }
}
