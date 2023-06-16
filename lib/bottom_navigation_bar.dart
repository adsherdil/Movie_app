import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(10, 10, 10, 0.9),
            backgroundBlendMode: BlendMode.xor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 23,
            ),
            CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 16,
                )),
            Icon(
              Icons.download,
              color: Colors.grey,
            ),
            Icon(
              Icons.stream,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
