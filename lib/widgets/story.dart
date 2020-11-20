import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String name;
  final bool yours;
  Story(this.name, [this.yours = false]);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: [
          Stack(
            children: [
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[
                        Color(0xFF4E246B),
                        Color(0xFF8134AF),
                        Color(0xFF833AB4),
                        Color(0xFFC23585),
                        Color(0xFFC9285C),
                        Color(0xFFDA4A64),
                        Color(0xFFFF5B3F),
                        Color(0xFFF46040),
                        Color(0xFFFE9F4D),
                        Color(0xFFFFCB51),
                        Color(0xFFFFCB40),
                        Color(0xFFFFED40),
                      ],
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: Theme.of(context).primaryColor,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/p1.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              if (yours)
                Positioned(
                  right: 1,
                  bottom: 1,
                  child: GestureDetector(
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
          FittedBox(
              child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ))
        ],
      ),
    );
  }
}
