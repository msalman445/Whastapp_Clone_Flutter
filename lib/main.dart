import 'package:flutter/material.dart';
import 'package:whatsapp/chats_list_view.dart';
import 'package:whatsapp/custom_colors.dart';
import 'package:whatsapp/custom_top_app_bar.dart';

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
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: CustomTopAppBar(
        title: widget.title,
        height: height,
        width: width,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Chats",
            icon: Icon(Icons.chat_outlined),
            activeIcon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: "Updates",
            icon: Icon(Icons.update_outlined),
            activeIcon: Icon(Icons.update),
          ),

          BottomNavigationBarItem(
            label: "Calls",
            icon: Icon(Icons.call_outlined),
            activeIcon: Icon(Icons.call),
          ),
        ],
      ),
      body: Center(
        child: ChatsListView(),
        // child: ProfileDialoge(imagePath: "assets/images/person.png"),
      ),
    );
  }
}
