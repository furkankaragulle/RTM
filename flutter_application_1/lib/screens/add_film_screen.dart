import 'package:flutter/material.dart';
import '../models/film.dart';

class AddFilmScreen extends StatefulWidget {
  @override
  _AddFilmScreenState createState() => _AddFilmScreenState();
}

class _AddFilmScreenState extends State<AddFilmScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  final TextEditingController synopsisController = TextEditingController();
  final TextEditingController actorsController = TextEditingController();
  final TextEditingController reviewsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Film Başlığı'),
            ),
            TextField(
              controller: imageUrlController,
              decoration: InputDecoration(labelText: 'Film Fotoğraf URL'),
            ),
            TextField(
              controller: synopsisController,
              decoration: InputDecoration(labelText: 'Film Özeti'),
            ),
            TextField(
              controller: actorsController,
              decoration:
                  InputDecoration(labelText: 'Oyuncular (Virgülle Ayırın)'),
            ),
            TextField(
              controller: reviewsController,
              decoration:
                  InputDecoration(labelText: 'Yorumlar (Virgülle Ayırın)'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Film eklemek için burada gerekli işlemleri yapın
                Film newFilm = Film(
                  title: titleController.text,
                  imageUrl: imageUrlController.text,
                  synopsis: synopsisController.text,
                  actors: actorsController.text,
                  reviews: reviewsController.text,
                );

                // Eklenen filmi kullanıcının görebileceği bir sayfaya yönlendirin
                Navigator.pop(context, newFilm);
              },
              child: Text('Film Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
