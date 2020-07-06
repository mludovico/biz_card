import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/marcelo.jpg'),
            ),
          ),
          Text(
            'Marcelo Ludovico de Paula',
            style: TextStyle(
              fontFamily: 'RockSalt',
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            'Flutter Developer'.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              letterSpacing: 2.5,
              wordSpacing: 5,
            ),
          ),
          SizedBox(
            width: 150,
            child: Divider(
              height: 16,
              color: Colors.white,
            ),
          ),
          _info(
            title: '+55 (19) 996856275',
            color: Colors.teal.shade300,
          ),
          _info(
            title: 'maludovico@gmail.com',
            color: Colors.teal.shade200,
          ),
        ],
      ),
    );
  }

  Widget _info({String title, Color color})=>Card(
    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    color: Colors.white,
    child: ListTile(
      leading: Icon(
        Icons.phone,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: color,
        ),
      ),
    ),
  );
}
