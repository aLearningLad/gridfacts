import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 5,
              children: [
                Text("Grid Facts"),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.pinkAccent),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.flag,
                      color: Colors.white,
                      size: 18,
                    ))
              ]),
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.menu,
              size: 40,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
