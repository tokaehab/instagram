import 'package:flutter/material.dart';
import '../screens/requests_screen.dart';

class RequestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RequestsScreen()));
        },
        child: ListTile(
          leading: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).primaryColor,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/p2.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
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
              ],
            ),
          ),
          title: Text(
            'Follow Requests',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
