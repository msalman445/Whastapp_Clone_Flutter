import 'package:flutter/material.dart';

class UpdatesPopUpMenu extends StatefulWidget {
  const UpdatesPopUpMenu({super.key});

  @override
  State<UpdatesPopUpMenu> createState() => _UpdatesPopUpMenuState();
}

class _UpdatesPopUpMenuState extends State<UpdatesPopUpMenu> {
  Items? selectedItem;

  void _onItemSelected(Items value) {
    switch (value) {
      case Items.channel:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(value.name)));
        break;
      case Items.privacy:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(value.name)));
        break;
      case Items.settings:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(value.name)));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      initialValue: selectedItem,
      offset: Offset(0, 40),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) {
        return <PopupMenuEntry<Items>>[
          PopupMenuItem(value: Items.channel, child: Text("Create channel")),
          PopupMenuItem(value: Items.privacy, child: Text("Status privacy")),
          PopupMenuItem(value: Items.settings, child: Text("Settings")),
        ];
      },
    );
  }
}

enum Items { channel, privacy, settings }
