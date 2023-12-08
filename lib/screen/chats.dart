import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chats.dart';
import 'package:whatsapp_clone/widget/chats.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ChatListTIle(
            name: chats[index].name,
            subtitle: chats[index].subtitle,
            trailing: chats[index].trailing,
            url: chats[index].url,
          ),
        );
      },
    );
  }
}