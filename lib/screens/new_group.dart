import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/widgets/group_member.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class NewGroup extends StatelessWidget {
  const NewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go('/groups'),
          icon: const Icon(Symbols.arrow_back),
        ),
        title: const Text('New Group'),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        child: FilledButton.icon(
          onPressed: () {},
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(64),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          icon: const Icon(Symbols.group_add),
          label: const Text('Create Group'),
        ),
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
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerHighest,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.shadow.withValues(alpha: 0.12),
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Icon(
                      Symbols.add_a_photo,
                      size: 64,
                      color: colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Set Group Photo',
                    style: textTheme.titleLarge?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            TextField(
              decoration: InputDecoration(
                label: const Text('Group Name'),
                hintText: 'e.g. Weekend Getaway',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                fillColor: colorScheme.surfaceContainerHighest,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: colorScheme.primary, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                label: const Text('Description'),
                hintText: 'What\'s this group about? (optional)',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                fillColor: colorScheme.surfaceContainerHighest,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: colorScheme.primary, width: 2),
                ),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                Text(
                  'Members',
                  style: textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '4',
                  style: textTheme.titleMedium?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(Symbols.person_add),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const GroupMember(name: 'You', isCurrentUser: true),
                const GroupMember(
                  name: 'Alice',
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuB6g8CAOX8J-uW8JpkgAZmlLHF-k5KT8u4ubkGJyWCFI1TkiqB72_UbrfOmza-z0nkkes9M6qoB0gxlEY1rzbbuyXC6xDWwWAMwNbyEir30F3JJaCvGb3vEyFvr9B5kYLerEBx5mqdINle2oDc4EU-glMkgpIC7N5TRUSFgvmqM1F1iEKg2M0gQsGOJGBEGu1PPsPF9fQdfVYpJffOdr-8pVKuu8V0NFSKm1SPLDNmtNoHTbiv0OCuO',
                  ),
                ),
                const GroupMember(
                  name: 'Bianca',
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuBgDsnuV0yVw7LoDP-Js2pV6UNw_vBIt8N-dT5gy53DzV0MaNs8TXsQDb9SMSZhiyItpMn9JceSvn9Al7mAiAsk3Bn6xHbnUNZnnWGwyqGADGYqTrma7ErUhJIy9KFQZHLtv8L0mFWnmR35HzqyqXhcT9T5xW3PvcVL0zyazFl7AQMcHFVs0Na_5IC2DyE00qmjI06Hj4WnaFhBpWWMmt4_cftqLNdTgIdO5CZVYTS6rRIjeu0CK4I9',
                  ),
                ),
                const GroupMember(
                  name: 'Charlie',
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuCay0KrddtF_1dH7VJjiZ-xtJbEchDJ59QQbxmmK6DrzbMdvILC8iV08JF1L37xuXtHDCLSO9NZN8H-mPwgR2ahNRMeWQ_9dnfQAwsxJzGuAcM4wvwNwvc4qdKUDEvw7HIrPViu0Ih6ZNdTZ_Vl7FPM7ExpxHGCnek-40NIXIht2ovzYGCGk2BGfLjFW_xzDLu86IILAKo5SiJwn0e9nSF8NFM1Sp8yhuKoGpTtlnr17Eiv-F1lk7BD',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
