import 'package:flutter/material.dart';
import 'package:salongram/styling.dart';

PreferredSizeWidget navBar(BuildContext context) {
  return AppBar(
    backgroundColor: navBackColor,
    actions: <Widget>[
      Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/screen1');
            },
            child: const Icon(
              Icons.home,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/screen2');
            },
            child: const Icon(
              Icons.manage_accounts,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.post_add,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
    ],
  );
}
