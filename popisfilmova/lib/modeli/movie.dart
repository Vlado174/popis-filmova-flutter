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
    icon: Icons.flight,
  ),
  Movie(
    name: "Gospodari prstenova: Povratak kralja",
    schedule: "Petak 19:30",
    description: "Dok snage Mordora stežu obruč, Aragorn preuzima kraljevsko prijestolje, a Frodo i Sam dolaze do Planine udesa s nemogućim zadatkom uništiti Jedinstveni prsten. Hoće li hrabrost pobijediti prije nego što tama prekrije svijet? Saznajte u spektakularnom finalu epske trilogije!",
    icon: Icons.shield,
  ),
  Movie(
    name: "Hobit: Smaugova pustoš",
    schedule: "Nedjelja 19:00",
    description: "Putujući prema Samotnoj gori, družina patuljaka i hobit Bilbo suočavaju se s opasnostima Mrkošume od divovskih pauka do šumskih vilenjaka. No, najveća prijetnja čeka ih na cilju: probuđeni zmaj Smaug. Hoće li Bilbo otkriti tajnu zmajeve riznice prije nego što vatra proguta Srednju zemlju?",
    icon: Icons.local_fire_department,
  ),
  Movie(
    name: "Matrix",
    schedule: "Četvrtak: 18:00",
    description: "Haker Neo otkriva da je svijet u kojem živi računalna simulacija i priključuje se pobuni protiv strojeva koji njome upravljaju.",
    icon: Icons.computer,
  ),
  Movie(
    name: "Men in Black 3",
    schedule: "Srijeda: 19:00",
    description: "Agent J putuje kroz vrijeme u 1969. godinu kako bi spasio život agentu K-u. Izvanzemaljac Boris Životinja pobjegao je iz zatvora na Mjesecu i želi promijeniti prošlost, a J mora zaustaviti invaziju prije nego što bude prekasno.",
    icon: Icons.rocket_launch,
  ),
];