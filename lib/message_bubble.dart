import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final Map<String, String> message;
  final bool isMe;

  const MessageBubble({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message['uid']!.toString().substring(0, 8),
            style: const TextStyle(
                color: Color.fromARGB(255, 49, 49, 49), fontSize: 12),
          ),
          Container(
            decoration: BoxDecoration(
              color: isMe ? Colors.amber : Colors.brown.shade900,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isMe ? 16 : 0),
                topRight: Radius.circular(isMe ? 0 : 16),
                bottomLeft: const Radius.circular(16),
                bottomRight: const Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              message['message']!,
              style: TextStyle(color: isMe ? Colors.white : Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
