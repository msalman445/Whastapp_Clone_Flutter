import 'package:flutter/material.dart';
import 'package:whatsapp/updates_list_view.dart';
import 'package:whatsapp/updates_calls_appbar.dart';
import 'package:whatsapp/updates_pop_up_menu.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpdatesCallsAppbar(
        title: title,
        isSearchIcon: true,
        moreOptions: UpdatesPopUpMenu(),
      ),
      backgroundColor: Colors.white,
      body: UpdatesListView(),
    );
  }
}
