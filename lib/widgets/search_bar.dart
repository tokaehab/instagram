import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool swapped = false;

  Widget searchTextField() {
    return AnimatedAlign(
      duration: Duration(
        milliseconds: 400,
      ),
      alignment: swapped ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: const EdgeInsets.only(left: 5),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white),
          onChanged: (value) {
            if (value.isEmpty && swapped) {
              setState(() {
                swapped = false;
              });
            } else if (value.isNotEmpty && !swapped) {
              setState(() {
                swapped = true;
              });
            }
          },
        ),
      ),
    );
  }

  Widget searchIconButton() {
    return AnimatedAlign(
      duration: Duration(milliseconds: 400),
      alignment: swapped ? Alignment.centerRight : Alignment.centerLeft,
      child: IconButton(
          icon: Icon(Icons.search),
          color: Colors.white,
          onPressed: () {
            try {
              FocusScope.of(context).unfocus();
            } catch (error) {
              print(error);
            }
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      // padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[600],
      ),
      child: Stack(
        children: <Widget>[
          searchTextField(),
          searchIconButton(),
        ],
      ),
    );
  }
}
