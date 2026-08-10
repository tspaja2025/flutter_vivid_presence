import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class ActiveChat extends StatelessWidget {
  const ActiveChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: const Icon(Symbols.arrow_back),
        ),
        title: const Text('Active Chat'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: const NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuA8jzv-hiFHiVDyeww-PC11pgB0xaZ0qN5CH_hK1c6HS95FDXd0c29JyPeX2fV1UpnYJfyuVhz_o8e25aMwBnylx5MaLeQ52cRCg4KZdmC5InE2n88SYEm4oe7_dqrq2k0jJFbDz0TKwMj7S0MFT-bB7YmNAUfN-lGJmhRCyebNknsjidopOGFPba_dXrsnJa8qa34c-Z9scNA1aF05BU_QB_mwth5XK5okEllhBMJPyC9IN1xFs-MZ',
                ),
              ),
              title: const Text('Sarah Jenkins'),
              subtitle: const Text('Online'),
              trailing: SizedBox(
                width: 144,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Symbols.video_call),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Symbols.phone),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Symbols.more_vert),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            Center(child: const Text('Yesterday, 4:20 PM')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Hey Sarah! Just wanted to check in on the project launch. Are we still good for Friday?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [const Text('4:20 PM')],
            ),
            Row(
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Hi! Yes, everything is on track. I just pushed the final updates to staging.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const Text('4:25 PM'),
            Row(
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'I\'ll send you the preview link in a minute.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const Text('4:26 PM'),
            Center(child: const Text('Today, 9:00 AM')),
            Row(
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network('images/chat_image.png'),
                      ),
                      Text(
                        'Here\'s a sneak peek of the new dashboard! What do you think?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text('9:05 AM'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Looks amazing! The new charts are super clean.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [const Text('9:10 AM')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Let\'s do a quick sync this afternoon to review the final checklist',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [const Text('9:11 AM')],
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Symbols.add_circle),
                suffixIcon: const Icon(Symbols.mic),
                hintText: 'Type a message...',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
