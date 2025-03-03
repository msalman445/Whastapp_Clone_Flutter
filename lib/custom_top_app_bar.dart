import 'package:flutter/material.dart';
import 'package:whatsapp/custom_colors.dart';

class CustomTopAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomTopAppBar({
    super.key,
    required this.title,
    required this.height,
    required this.width,
  });

  final String title;
  final double width;
  final double height;

  @override
  State<CustomTopAppBar> createState() => _CustomTopAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height * 0.18);
}

class _CustomTopAppBarState extends State<CustomTopAppBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: CustomColors.clrGreen,
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
      bottom: PreferredSize(
        preferredSize: Size(widget.width, widget.height * 0.1),
        child: Column(
          children: [
            SizedBox(
              width: widget.width * 0.9,
              height: widget.height * 0.1,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: CustomColors.clrGreyBackground,

                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  filled: true,
                  label: Text(
                    "Ask Meta AI or Search",
                    maxLines: 1,
                    style: TextStyle(
                      color: CustomColors.clrGreyTextSearch,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      width: 0,
                      color: CustomColors.clrGreyBackground,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      width: 0,
                      color: CustomColors.clrGreen,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
