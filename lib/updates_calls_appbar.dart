import 'package:flutter/material.dart';

class UpdatesCallsAppbar extends StatefulWidget implements PreferredSizeWidget {
  const UpdatesCallsAppbar({
    super.key,
    required this.title,
    required this.isSearchIcon,
    required this.moreOptions,
  });

  final String title;
  final bool isSearchIcon;
  final Widget moreOptions;

  @override
  State<UpdatesCallsAppbar> createState() => _UpdatesCallsAppbarState();

  @override
  Size get preferredSize => Size.fromHeight(kBottomNavigationBarHeight);
}

class _UpdatesCallsAppbarState extends State<UpdatesCallsAppbar> {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  bool _isSearching = false;

  final InputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 0.1, color: Colors.transparent),
    borderRadius: BorderRadius.all(Radius.circular(50)),
  );

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    return AppBar(
      title:
          _isSearching
              ? SizedBox(
                width: width,
                height: height * 0.07,
                child: TextField(
                  keyboardType: TextInputType.webSearch,
                  autofocus: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    border: inputBorder,
                    enabledBorder: inputBorder,
                    focusedBorder: inputBorder,
                    hintText: "Search...",
                    prefixIcon: IconButton(
                      iconSize: 22,
                      onPressed: _toggleSearch,
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              )
              : Text(widget.title),
      centerTitle: false,
      backgroundColor: Colors.white,
      actions:
          _isSearching
              ? null
              : [
                if (widget.isSearchIcon)
                  IconButton(
                    onPressed: _toggleSearch,
                    icon: Icon(Icons.search),
                  ),

                widget.moreOptions,
              ],
    );
  }
}
