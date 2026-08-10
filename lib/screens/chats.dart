import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 0,
      title: 'Chats',
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Symbols.edit_square),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              onTap: () {
                context.go('activeChat');
              },
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: const NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuCQEni3wf9ofgvOFLBS2kO7QLd6pm9CRzGQut4wPIgZXQodsxeHz3jbm8EIM--lLsDiW2xWS1vC_Oi5t9M6kDAov3j0GRxE2gIgRS2_xPFR02EFau90WMbfQ9--NOqbPYsRj5YIrL_WqqcY7Pjio8EBnmZhWPr8JYp3WqnvO03MJjyfDrAp-bFWZOLn0XvWKRnE3PyMe9i7Jl0DMDcNDoJ6Ri9cqVPlSEidsER0D7Tr_vO_o5dTgz0v',
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
              title: const Text('Sarah Jenkins'),
              subtitle: Row(
                children: [
                  Expanded(
                    child: const Text(
                      'The new designs look fantastic! Can we review them later today?',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
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
              onTap: () {
                context.go('activeChat');
              },
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: const NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuAzcaJk6ciXOCIaGZaWoeoKugrOZcmVd2WVRurPgSgNhE0yG9J24O5RwOj7NifFtG8gA2RmueDz04n8ZgpAEmAsFkvoOmYjskiwlHMfL_VKkKvodX2n_HxQ_tPkj-VAEBhuyFT2ROGTalFMyMp3LBNY623w0XK3J6J9RyyUXXRH3daJ35xjWYFLIKuzYlhf-srDX--1OFLEwGrI6Nk-bYnhjWn6a8J3JkmuyjTpWgtAGnhCcwHLSZ41',
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
              title: const Text('Alex Rivera'),
              subtitle: Row(
                children: [
                  const Icon(Symbols.done_all, size: 16),
                  const SizedBox(width: 4),
                  Expanded(
                    child: const Text(
                      'Sounds good, I\'ll send the files over shortly.',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              trailing: const Text('Yesterday'),
            ),
            ListTile(
              onTap: () {
                context.go('activeChat');
              },
              leading: SizedBox(
                width: 48,
                height: 48,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      backgroundImage: const NetworkImage(
                        'https://lh3.googleusercontent.com/aida-public/AB6AXuC06yvM7dJvKdFFYFRop7hC9_VdZ81L65HKwd9s_pqhUyo3rFZSat1myBeBWTFuWMg8Ps4T5FXL2qfALXOusmlVxC_vEjf2937CWOm7DLTn-_jvWTOA_Sr8UGXWxHH0_eDJnCCO1v4k6MOLO6HnxOkoLzM_t2-hG3c-6Sc8Hmp3vqi_1dNotjxIqowfjgfOTj_EWXHSqCH5t-LM2KlZzUA-SY_wSzs30MKnTIjPwGTBwg0Dh_MsPubD',
                      ),
                    ),
                    Positioned(
                      right: -2,
                      bottom: -2,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        child: CircleAvatar(
                          radius: 14,
                          backgroundImage: const NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuD_d6LK-ZYmGMYVcdqrA-AcDLvpNTQbAJtXCRkTUVdv2hTOhSlh2I9fO4Op0HFvIcca7PQ5BoWkhyR6Lbb1sKctHHgrogjVqqwF0Fs2oCVjo6Eyhox8HQxLRzRF3b4kN6Q2LgKmUNQEfLSvvwW7ZXwNFbRrrjH9indpDgCOznf6y0P2ZlAqFOlNnXc9n023CBkww2p25ncOdN5Y9tF9pwrIt1F3IJLVyBX-da8B2Lzi9-QgJQPNKiOv',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              title: const Text('Q3 Planning'),
              subtitle: Row(
                children: [
                  const Icon(Symbols.done_all, size: 16),
                  const SizedBox(width: 4),
                  Expanded(
                    child: const Text(
                      'You: Let\'s align on the roadmap on Thursday.',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              trailing: const Text('Tuesday'),
            ),
            ListTile(
              onTap: () {
                context.go('activeChat');
              },
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(radius: 24, child: const Text('MK')),
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
                      ).colorScheme.surfaceContainerHighest,
                    ),
                  ),
                ],
              ),
              title: const Text('Marcus Kim'),
              subtitle: Row(
                children: [
                  const Icon(Symbols.check, size: 16),
                  const SizedBox(width: 4),
                  const Text('Thanks for the update.'),
                ],
              ),
              trailing: const Text('Oct 12'),
            ),
          ],
        ),
      ),
    );
  }
}
