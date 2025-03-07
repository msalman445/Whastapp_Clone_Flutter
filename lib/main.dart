import 'package:flutter/material.dart';
import 'package:whatsapp/calls_screen.dart';
import 'package:whatsapp/chats_list_view.dart';
import 'package:whatsapp/chats_screen.dart';
import 'package:whatsapp/communities_screen.dart';
import 'package:whatsapp/custom_colors.dart';
import 'package:whatsapp/profile_dialoge.dart';
import 'package:whatsapp/status_card.dart';
import 'package:whatsapp/updates_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.clrGreen),
      ),
      home: const MyHomePage(title: 'Whatsapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 3;

  void _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _updateIndex,
        backgroundColor: Colors.white,
        surfaceTintColor: const Color(0xFFCECECE),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            selectedIcon: Icon(Icons.chat, color: CustomColors.clrGreen),
            label: "Chats",
          ),
          NavigationDestination(
            icon: Icon(Icons.update_outlined),
            selectedIcon: Icon(Icons.update, color: CustomColors.clrGreen),

            label: "Updates",
          ),
          NavigationDestination(
            icon: Icon(Icons.group_outlined),
            selectedIcon: Icon(Icons.group, color: CustomColors.clrGreen),

            label: "Communities",
          ),
          NavigationDestination(
            icon: Icon(Icons.call_outlined),
            selectedIcon: Icon(Icons.call, color: CustomColors.clrGreen),
            label: "Calls",
          ),
        ],
      ),
      body: Center(
        child:
            <Widget>[
              ChatsScreen(title: widget.title),
              UpdatesScreen(title: "Updates"),
              CommunitiesScreen(),
              CallsScreen(),
            ][_selectedIndex],

        // child: ProfileDialoge(imagePath: "assets/images/person.png"),
      ),
    );
  }
}
