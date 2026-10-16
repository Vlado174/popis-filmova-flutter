import "package:flutter/material.dart";

class Movie {
  final String name;
  final String schedule;
  final String description;
  final IconData icon;

  const Movie ({
    required this.name,
    required this.schedule,
    required this.description,
    required this.icon,
  });
}

const List<Movie> movies = [
  Movie(
    name: "Top gun Maverick",
    schedule: "Subota 20:00",
    description: "Dok iskusni probni pilot Pete (Maverick) Mitchell obučava elitnu skupinu Top Guna za gotovo nemoguću misiju, mora se suočiti s duhovima prošlosti. Slijedi napeta borba s vremenom i opasna letačka misija koja zahtijeva ultimativnu žrtvu.",
    icon: Icons.precision_manufacturing,
  ),
  Movie(
    name: "Gospodari prstenova: Povratak kralja",
    schedule: "Petak 19:30",
    description: "Dok snage Mordora stežu obruč, Aragorn preuzima kraljevsko prijestolje, a Frodo i Sam dolaze do Planine udesa s nemogućim zadatkom uništiti Jedinstveni prsten. Hoće li hrabrost pobijediti prije nego što tama prekrije svijet? Saznajte u spektakularnom finalu epske trilogije!",
    icon: Icons.music_note,
  ),
  Movie(
    name: "Hobit: Smaugova pustoš",
    schedule: "Nedjelja 19:00",
    description: "Putujući prema Samotnoj gori, družina patuljaka i hobit Bilbo suočavaju se s opasnostima Mrkošume od divovskih pauka do šumskih vilenjaka. No, najveća prijetnja čeka ih na cilju: probuđeni zmaj Smaug. Hoće li Bilbo otkriti tajnu zmajeve riznice prije nego što vatra proguta Srednju zemlju?",
    icon: Icons.extension,
  ),
  Movie(
    name: "Matrix",
    schedule: "Četvrtak 15:00, učionica 7",
    description: "Snimamo školska događanja i uređujemo fotografije",
    icon: Icons.photo_camera,
  ),
  Movie(
    name: "Košarka i priprema za međuškolsko natjecanje",
    schedule: "Petak 14:30, sportska dvorana",
    description: "Treniramo dva puta tjedno i igramo međuškolsku ligu",
    icon: Icons.sports_basketball,
  ),
];