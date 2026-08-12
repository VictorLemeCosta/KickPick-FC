class ChampionshipTitle {
  final String id;

  final String championshipId;

  final String clubId;

  final int season;

  const ChampionshipTitle({
    required this.id,
    required this.championshipId,
    required this.clubId,
    required this.season,
  });

  factory ChampionshipTitle.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChampionshipTitle(
      id: json['id'],

      championshipId:
          json['championship_id'],

      clubId: json['club_id'],

      season:
          json['season'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,

      'championship_id':
          championshipId,

      'club_id': clubId,

      'season': season,
    };
  }

  ChampionshipTitle copyWith({
    String? id,
    String? championshipId,
    String? clubId,
    int? season,
  }) {
    return ChampionshipTitle(
      id: id ?? this.id,

      championshipId:
          championshipId ??
              this.championshipId,

      clubId:
          clubId ?? this.clubId,

      season:
          season ?? this.season,
    );
  }
}