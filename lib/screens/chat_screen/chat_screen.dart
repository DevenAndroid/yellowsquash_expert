import 'package:flutter/material.dart';
import 'package:yellowsquash_expert/widgets/back_app_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Chat"),
      ),
    );
  }
}
