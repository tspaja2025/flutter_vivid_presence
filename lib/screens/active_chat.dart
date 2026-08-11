import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/models/chat_message.dart';
import 'package:flutter_vivid_presence/widgets/chat_bubble.dart';
import 'package:flutter_vivid_presence/widgets/chat_composer.dart';
import 'package:flutter_vivid_presence/widgets/chat_header.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class ActiveChat extends StatefulWidget {
  const ActiveChat({super.key});

  @override
  State<ActiveChat> createState() => _ActiveChatState();
}

class _ActiveChatState extends State<ActiveChat> {
  final _scrollController = ScrollController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _scrollController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(Symbols.arrow_back),
        ),
        title: const Text('Active Chat'),
      ),
      body: Column(
        children: [
          const ChatHeader(),
          const Divider(height: 1),
          Expanded(
            child: ListView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                Center(child: const Text('Yesterday, 4:20 PM')),
                ChatBubble(
                  message: ChatMessage(
                    text:
                        'Hey Sarah! Just wanted to check in on the project launch. Are we still good for Friday?',

                    time: '4:20 PM',
                    isMine: true,
                  ),
                ),
                const SizedBox(height: 12),
                ChatBubble(
                  message: ChatMessage(
                    text:
                        'Hi! Yes, everything is on track. I just pushed the final updates to staging.',

                    time: '4:25 PM',
                    isMine: false,
                  ),
                ),
                const SizedBox(height: 12),
                ChatBubble(
                  message: ChatMessage(
                    text: 'I\'ll send you the preview link in a minute.',
                    time: '4:26 PM',
                    isMine: false,
                  ),
                ),
                const SizedBox(height: 12),
                Center(child: const Text('Today, 9:00 AM')),
                const SizedBox(height: 12),
                ChatBubble(
                  message: ChatMessage(
                    text:
                        'Here\'s a sneak peek of the new dashboard! What do you think?',

                    time: '9:05 AM',
                    image: 'images/chat_image.png',
                    isMine: false,
                  ),
                ),
                const SizedBox(height: 12),
                ChatBubble(
                  message: ChatMessage(
                    text: 'Looks amazing! The new charts are super clean.',
                    time: '9:10 PM',
                    isMine: true,
                  ),
                ),
                const SizedBox(height: 12),
                ChatBubble(
                  message: ChatMessage(
                    text:
                        'Let\'s do a quick sync this afternoon to review the final checklist',
                    time: '9:11 PM',
                    isMine: true,
                  ),
                ),
              ],
            ),
          ),
          const ChatComposer(),
        ],
      ),
    );
  }
}
