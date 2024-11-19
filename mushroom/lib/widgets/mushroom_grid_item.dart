import 'package:mushroom/data/dummy_data.dart';
//import 'package:mushroom/screens/mushroom_details.dart';
import 'package:flutter/material.dart';
import 'package:mushroom/models/mushroom.dart';

class MushroomGridItem extends StatelessWidget{
  const MushroomGridItem({
    super.key,
    required this.mushroom});

  final Mushroom mushroom;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 60, 188, 23),
        ),
        child: Text(mushroom.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        ),
      ),
    );
  }
}