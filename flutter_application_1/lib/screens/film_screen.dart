import 'package:flutter/material.dart';
import '../models/film.dart';

class FilmScreen extends StatelessWidget {
  final Film film;

  FilmScreen({required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(film.imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(film.synopsis),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Actors: ${film.actors}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Reviews: ${film.reviews}'),
            ),
          ],
        ),
      ),
    );
  }
}
