import 'package:flutter/material.dart';
import 'package:whatsapp/communities_list_view.dart';
import 'package:whatsapp/communities_menu_anchor.dart';
import 'package:whatsapp/updates_calls_appbar.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpdatesCallsAppbar(
        title: 'Communities',
        isSearchIcon: false,
        moreOptions: CommunitiesMenuAnchor(),
      ),
      backgroundColor: Colors.white,
      body: CommunitiesListView(),
    );
  }
}
