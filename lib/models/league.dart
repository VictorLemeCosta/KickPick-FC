import 'team.dart';

class League {
  final String id;
  final String name;
  final String season;
  final List<LeagueStanding> standings;

  const League({
    required this.id,
    required this.name,
    required this.season,
    required this.standings,
  });
}

class LeagueStanding {
  final int position;
  final Team team;
  final int points;
  final int played;
  final int wins;
  final int draws;
  final int losses;

  const LeagueStanding({
    required this.position,
    required this.team,
    required this.points,
    required this.played,
    required this.wins,
    required this.draws,
    required this.losses,
  });
}