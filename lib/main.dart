import 'package:flutter/material.dart';
import 'package:whatsapp/bottom_navigation_bar.dart';
import 'package:whatsapp/calls_screen.dart';
import 'package:whatsapp/chats_screen.dart';
import 'package:whatsapp/communities_screen.dart';
import 'package:whatsapp/custom_colors.dart';
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
  late PageController _pageController;

  int _selectedIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: _selectedIndex,
        updateIndex: _updateIndex,
      ),
      body: Center(
        child: PageView(
          scrollBehavior: MaterialScrollBehavior(),
          controller: _pageController,
          onPageChanged:
              (value) => setState(() {
                _selectedIndex = value;
              }),
          children: <Widget>[
            ChatsScreen(title: widget.title),
            UpdatesScreen(),
            CommunitiesScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
