import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 28,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          GestureDetector(
            child: Row(
              children: [
                Icon(
                  Icons.history,
                  size: 28,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Archive',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          GestureDetector(
            child: Row(
              children: [
                Icon(
                  Icons.history_toggle_off,
                  size: 28,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Your Activity',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          GestureDetector(
            child: Row(
              children: [
                Icon(
                  Icons.bookmark_border,
                  size: 28,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Saved',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          GestureDetector(
            child: Row(
              children: [
                Icon(
                  Icons.format_list_bulleted,
                  size: 28,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Close Friends',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          GestureDetector(
            child: Row(
              children: [
                Icon(
                  Icons.person_add_outlined,
                  size: 28,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Discover People',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
