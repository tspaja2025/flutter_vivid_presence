class ChatMessage {
  final String text;
  final String time;
  final bool isMine;
  final String? image;

  const ChatMessage({
    required this.text,
    required this.time,
    required this.isMine,
    this.image,
  });
}
