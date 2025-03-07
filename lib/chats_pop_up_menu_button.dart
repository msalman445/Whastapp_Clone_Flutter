import 'package:flutter/material.dart';

class ChatsPopuUpMenuButton extends StatefulWidget {
  const ChatsPopuUpMenuButton({super.key});

  @override
  State<ChatsPopuUpMenuButton> createState() => _ChatsPopuUpMenuButtonState();
}

class _ChatsPopuUpMenuButtonState extends State<ChatsPopuUpMenuButton> {
  Items? _selectedValue;

  void _onSelectedItem(Items value) {
    switch (value) {
      case Items.group:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(value.name)));
        break;
      case Items.broadcast:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(value.name)));
        break;
      case Items.devices:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(value.name)));
        break;
      case Items.starred:
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
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      offset: Offset(0, 40),
      initialValue: _selectedValue,
      tooltip: "More Options",
      onSelected: _onSelectedItem,
      itemBuilder: (context) {
        return <PopupMenuEntry<Items>>[
          PopupMenuItem(value: Items.group, child: Text("New group")),
          PopupMenuItem(value: Items.broadcast, child: Text("New broadcast")),
          PopupMenuItem(value: Items.devices, child: Text("Linked devices")),
          PopupMenuItem(value: Items.starred, child: Text("Starred messages")),
          PopupMenuItem(value: Items.settings, child: Text("Settings")),
        ];
      },
    );
  }
}

enum Items { group, broadcast, devices, starred, settings }
