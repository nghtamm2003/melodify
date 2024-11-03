import 'package:flutter/material.dart';
import 'package:melodify/core/helpers/current_theme.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isAuthPage;
  final Widget? title;

  const CustomizedAppBar({
    super.key,
    this.isAuthPage = false,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: title ?? const Text(''),
      centerTitle: true,
      leading: Transform.translate(
        offset: const Offset(10, 0),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: isAuthPage
                  ? Colors.white.withOpacity(0.05)  
                  : (context.isDark
                      ? Colors.white.withOpacity(0.05)
                      : Colors.black.withOpacity(0.05)),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
              color: isAuthPage
                  ? Colors.white
                  : (context.isDark ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
