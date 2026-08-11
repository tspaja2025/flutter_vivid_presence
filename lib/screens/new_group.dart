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
          onPressed: () => context.go('/groups'),
          icon: const Icon(Symbols.arrow_back),
        ),
        title: const Text('New Group'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Symbols.group_add),
        label: const Text('Create Group'),
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
                Column(
                  children: [
                    CircleAvatar(radius: 24, child: const Icon(Symbols.person)),
                    const Text('You'),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: const NetworkImage(
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuB6g8CAOX8J-uW8JpkgAZmlLHF-k5KT8u4ubkGJyWCFI1TkiqB72_UbrfOmza-z0nkkes9M6qoB0gxlEY1rzbbuyXC6xDWwWAMwNbyEir30F3JJaCvGb3vEyFvr9B5kYLerEBx5mqdINle2oDc4EU-glMkgpIC7N5TRUSFgvmqM1F1iEKg2M0gQsGOJGBEGu1PPsPF9fQdfVYpJffOdr-8pVKuu8V0NFSKm1SPLDNmtNoHTbiv0OCuO',
                      ),
                    ),
                    const Text('Alice'),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: const NetworkImage(
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuBgDsnuV0yVw7LoDP-Js2pV6UNw_vBIt8N-dT5gy53DzV0MaNs8TXsQDb9SMSZhiyItpMn9JceSvn9Al7mAiAsk3Bn6xHbnUNZnnWGwyqGADGYqTrma7ErUhJIy9KFQZHLtv8L0mFWnmR35HzqyqXhcT9T5xW3PvcVL0zyazFl7AQMcHFVs0Na_5IC2DyE00qmjI06Hj4WnaFhBpWWMmt4_cftqLNdTgIdO5CZVYTS6rRIjeu0CK4I9',
                      ),
                    ),
                    const Text('Bianca'),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: const NetworkImage(
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuCay0KrddtF_1dH7VJjiZ-xtJbEchDJ59QQbxmmK6DrzbMdvILC8iV08JF1L37xuXtHDCLSO9NZN8H-mPwgR2ahNRMeWQ_9dnfQAwsxJzGuAcM4wvwNwvc4qdKUDEvw7HIrPViu0Ih6ZNdTZ_Vl7FPM7ExpxHGCnek-40NIXIht2ovzYGCGk2BGfLjFW_xzDLu86IILAKo5SiJwn0e9nSF8NFM1Sp8yhuKoGpTtlnr17Eiv-F1lk7BD',
                      ),
                    ),
                    const Text('Charlie'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
