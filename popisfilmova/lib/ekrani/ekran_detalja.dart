import "package:flutter/material.dart";
import "package:popisfilmova/modeli/movie.dart";

class EkranDetalja extends StatelessWidget {
  final Movie movie;
  final bool isJoined;

  const EkranDetalja({
    super.key,
    required this.movie,
    required this.isJoined,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.name),
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.deepOrange),
              ),
              child: Row(
                children: [
                  Icon(movie.icon, size: 48, color: Colors.deepOrange),
                  const SizedBox(width: 12),
                  Expanded(child: Text(movie.description)),
                ],
              ),
            ),
            Text(
              "Termin: ${movie.schedule}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: isJoined ? null : () => Navigator.pop(context, true),
                  child: Text(isJoined ? "Karta kupljena" : "Kupi kartu"),
                ),
                OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Natrag"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}