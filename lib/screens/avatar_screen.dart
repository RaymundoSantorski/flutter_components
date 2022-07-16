import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.pink[800],
              child: const Text('SL'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              'https://dam.smashmexico.com.mx/wp-content/uploads/2022/03/spider-man-no-way-home-arte-conceptual-cambio-traje-cover.jpg'),
        ),
      ),
    );
  }
}
