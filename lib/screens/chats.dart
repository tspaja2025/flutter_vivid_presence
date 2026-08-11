import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:flutter_vivid_presence/widgets/chat_list_tile.dart';
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
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          ChatListTile(
            onTap: () => context.go('activeChat'),
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuCQEni3wf9ofgvOFLBS2kO7QLd6pm9CRzGQut4wPIgZXQodsxeHz3jbm8EIM--lLsDiW2xWS1vC_Oi5t9M6kDAov3j0GRxE2gIgRS2_xPFR02EFau90WMbfQ9--NOqbPYsRj5YIrL_WqqcY7Pjio8EBnmZhWPr8JYp3WqnvO03MJjyfDrAp-bFWZOLn0XvWKRnE3PyMe9i7Jl0DMDcNDoJ6Ri9cqVPlSEidsER0D7Tr_vO_o5dTgz0v',
            ),
            name: 'Sarah Jenkins',
            message:
                'The new designs look fantastic! Can we review them later today?',
            time: '10:42 AM',
            unreadCount: 3,
            isOnline: true,
          ),
          ChatListTile(
            onTap: () => context.go('activeChat'),
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuAzcaJk6ciXOCIaGZaWoeoKugrOZcmVd2WVRurPgSgNhE0yG9J24O5RwOj7NifFtG8gA2RmueDz04n8ZgpAEmAsFkvoOmYjskiwlHMfL_VKkKvodX2n_HxQ_tPkj-VAEBhuyFT2ROGTalFMyMp3LBNY623w0XK3J6J9RyyUXXRH3daJ35xjWYFLIKuzYlhf-srDX--1OFLEwGrI6Nk-bYnhjWn6a8J3JkmuyjTpWgtAGnhCcwHLSZ41',
            ),
            name: 'Alex Rivera',
            message: 'Sounds good, I\'ll send the files over shortly.',
            messageIcon: const Icon(Symbols.done_all, size: 16),
            time: 'Yesterday',
            isOnline: true,
          ),
          ChatListTile(
            onTap: () => context.go('activeChat'),
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuC06yvM7dJvKdFFYFRop7hC9_VdZ81L65HKwd9s_pqhUyo3rFZSat1myBeBWTFuWMg8Ps4T5FXL2qfALXOusmlVxC_vEjf2937CWOm7DLTn-_jvWTOA_Sr8UGXWxHH0_eDJnCCO1v4k6MOLO6HnxOkoLzM_t2-hG3c-6Sc8Hmp3vqi_1dNotjxIqowfjgfOTj_EWXHSqCH5t-LM2KlZzUA-SY_wSzs30MKnTIjPwGTBwg0Dh_MsPubD',
            ),
            secondaryAvatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuD_d6LK-ZYmGMYVcdqrA-AcDLvpNTQbAJtXCRkTUVdv2hTOhSlh2I9fO4Op0HFvIcca7PQ5BoWkhyR6Lbb1sKctHHgrogjVqqwF0Fs2oCVjo6Eyhox8HQxLRzRF3b4kN6Q2LgKmUNQEfLSvvwW7ZXwNFbRrrjH9indpDgCOznf6y0P2ZlAqFOlNnXc9n023CBkww2p25ncOdN5Y9tF9pwrIt1F3IJLVyBX-da8B2Lzi9-QgJQPNKiOv',
            ),
            name: 'Q3 Planning',
            message: 'You: Let\'s align on the roadmap on Thursday.',
            messageIcon: const Icon(Symbols.done_all, size: 16),
            time: 'Tuesday',
            isGroup: true,
          ),
          ChatListTile(
            onTap: () => context.go('activeChat'),
            avatar: null,
            name: 'Marcus Kim',
            message: 'Thanks for the update.',
            messageIcon: const Icon(Symbols.check, size: 16),
            time: 'Oct 12',
          ),
        ],
      ),
    );
  }
}
