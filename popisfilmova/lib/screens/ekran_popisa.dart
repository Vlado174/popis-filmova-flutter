import "package:flutter/material.dart";
import "package:popisfilmova/models/movie.dart";
import "package:popisfilmova/screens/ekran_detalja.dart";

class EkranPopisa extends StatefulWidget {
  const EkranPopisa({super.key});

  @override
  State<EkranPopisa> createState() => _EkranPopisaState();
}

class _EkranPopisaState extends State<EkranPopisa> {
  final Set<String> joined = {};

  Future<void> openDetails(Movie movie) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => EkranDetalja(
          movie: movie,
          isJoined: joined.contains(movie.name),
        ),
      ),
    );

    if (result != null) {
      setState(() {
        joined.add(movie.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tiles = [];
    for (final movie in movies) {
      tiles.add(
        MovieTile(
          movie: movie,
          isJoined: joined.contains(movie.name),
          onOpen: () {
            openDetails(movie);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Popis filmova")),
      body: ListView(padding: const EdgeInsets.all(8), children: tiles),
    );
  }
}

class MovieTile extends StatelessWidget {
  final Movie movie;
  final bool isJoined;
  final VoidCallback onOpen;

  const MovieTile({
    super.key,
    required this.movie,
    required this.isJoined,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            movie.icon,
            size: 32,
            color: isJoined ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(movie.schedule),
              ],
            ),
          ),
          IconButton(onPressed: onOpen, icon: const Icon(Icons.chevron_right)),
        ],
      ),
    );
  }
}