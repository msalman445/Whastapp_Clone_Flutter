import 'package:flutter/material.dart';
import 'package:whatsapp/calls_list_view.dart';
import 'package:whatsapp/calls_menu_anchor.dart';
import 'package:whatsapp/updates_calls_appbar.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpdatesCallsAppbar(
        title: "Calls",
        isSearchIcon: true,
        moreOptions: CallsMenuAnchor(),
      ),
      backgroundColor: Colors.white,
      body: CallsListView(),
    );
  }
}
