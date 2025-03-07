import 'package:flutter/material.dart';
import 'package:whatsapp/updates_list_view.dart';
import 'package:whatsapp/updates_calls_appbar.dart';
import 'package:whatsapp/updates_pop_up_menu.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpdatesCallsAppbar(
        title: "Updates",
        isSearchIcon: true,
        moreOptions: UpdatesPopUpMenu(),
      ),
      backgroundColor: Colors.white,
      body: UpdatesListView(),
    );
  }
}
