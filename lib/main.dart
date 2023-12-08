import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/calls.dart';
import 'package:whatsapp_clone/screen/chats.dart';
import 'package:whatsapp_clone/screen/status.dart';


void main() {
  runApp(
    const MaterialApp(
      title: "WhatsApp Clone",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF008069),
          title: const Text("WhatsApp Clone", style: TextStyle(fontSize: 20.0,color: Colors.white)),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 4.0,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              insets: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            labelStyle: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),

            tabs: <Tab>[
              Tab(icon: Icon(Icons.groups, size: 30.0)),              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(child: Text("Groups")),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF008069),
          child: const Icon(Icons.message, color: Colors.white),
          onPressed: () {},

        ),
      ),
    );
  }
}

