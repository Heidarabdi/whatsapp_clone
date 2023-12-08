import 'package:flutter/material.dart';

class ChatListTIle extends StatelessWidget {
  const ChatListTIle({
    super.key,
    required this.name,
    required this.subtitle,
    required this.trailing,
    required this.url,
  });

  final String name,subtitle,trailing,url;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading:  CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(url),
      ),
      title: Text(name,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 15.0),),
      trailing: Text(trailing, style: const TextStyle(fontSize: 14.0),),
    );
  }
}
