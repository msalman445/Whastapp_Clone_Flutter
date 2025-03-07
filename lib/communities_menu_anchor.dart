import 'package:flutter/material.dart';

class CommunitiesMenuAnchor extends StatefulWidget {
  const CommunitiesMenuAnchor({super.key});

  @override
  State<CommunitiesMenuAnchor> createState() => _CommunitiesMenuAnchorState();
}

class _CommunitiesMenuAnchorState extends State<CommunitiesMenuAnchor> {
  void _onMenuSelected(Items item) {
    switch (item) {
      case Items.settings:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(item.name)));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      style: MenuStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
      ),
      menuChildren: [
        MenuItemButton(
          onPressed: () {
            _onMenuSelected(Items.settings);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Settings"),
          ),
        ),
      ],
      builder: (context, controller, child) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          icon: Icon(Icons.more_vert),
        );
      },
    );
  }
}

enum Items { settings }
