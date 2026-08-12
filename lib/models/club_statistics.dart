class ClubStatistics {
  final int wins;

  final int draws;

  final int losses;

  final int goalsFor;

  final int goalsAgainst;

  const ClubStatistics({
    required this.wins,
    required this.draws,
    required this.losses,
    required this.goalsFor,
    required this.goalsAgainst,
  });

  factory ClubStatistics.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClubStatistics(
      wins: json['wins'] ?? 0,
      draws: json['draws'] ?? 0,
      losses: json['losses'] ?? 0,
      goalsFor: json['goals_for'] ?? 0,
      goalsAgainst:
          json['goals_against'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'wins': wins,
      'draws': draws,
      'losses': losses,
      'goals_for': goalsFor,
      'goals_against':
          goalsAgainst,
    };
  }

  ClubStatistics copyWith({
    int? wins,
    int? draws,
    int? losses,
    int? goalsFor,
    int? goalsAgainst,
  }) {
    return ClubStatistics(
      wins: wins ?? this.wins,
      draws: draws ?? this.draws,
      losses:
          losses ?? this.losses,
      goalsFor:
          goalsFor ??
              this.goalsFor,
      goalsAgainst:
          goalsAgainst ??
              this.goalsAgainst,
    );
  }

  int get matchesPlayed {
    return wins +
        draws +
        losses;
  }

  int get points {
    return (wins * 3) + draws;
  }

  double get winRate {
    if (matchesPlayed == 0) {
      return 0;
    }

    return (wins /
            matchesPlayed) *
        100;
  }
}