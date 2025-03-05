import 'package:flutter/material.dart';
import 'package:whatsapp/chats_list_view.dart';
import 'package:whatsapp/custom_top_app_bar.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key, required this.title});
  final String title;
  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
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
      body: ChatsListView(),
    );
  }
}
