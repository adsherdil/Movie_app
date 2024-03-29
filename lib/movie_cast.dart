// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Cast extends StatelessWidget {
  Cast({super.key});
  Map<String, String> actorlist = {
    "Humayo Saeed": "Punjab ",
    "Ijaz Aslam": "Love phr se",
    "Mehwish Hayat": "Jawani phr nhi ani",
    "Sajal Ali": "Wrong no",
  };
  Widget profiles(String actorname, String movie) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            Text(
              actorname.toString(),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              movie.toString(),
              style: const TextStyle(color: Color.fromRGBO(87, 87, 87, 1)),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Row(
            children: [
              for (int i = 0; i < actorlist.length; i++)
                profiles(
                    actorlist.keys.elementAt(i), actorlist.values.elementAt(i))
            ],
          ),
        ));
  }
}
