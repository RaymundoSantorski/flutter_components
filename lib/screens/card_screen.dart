import 'package:fl_components/widgets/custom_card_type_1.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(
                title: 'Soy un titulo',
                subtitle: 'Laboris Lorem nisi anim.',
                icon:
                    Icon(Icons.photo_album_outlined, color: AppTheme.primary)),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl: 'http://cdn.eso.org/images/screen/millour-01-cc.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              name: 'Un hermoso paisaje',
              imageUrl:
                  'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}
