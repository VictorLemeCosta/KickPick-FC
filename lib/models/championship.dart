class Championship {
  final String id;

  final String name;

  final String season;

  final List<String> clubIds;

  const Championship({
    required this.id,
    required this.name,
    required this.season,
    required this.clubIds,
  });

  factory Championship.fromJson(
    Map<String, dynamic> json,
  ) {
    return Championship(
      id: json['id'],

      name: json['name'],

      season: json['season'],

      clubIds:
          List<String>.from(
        json['club_ids'] ?? [],
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,

      'name': name,

      'season': season,

      'club_ids': clubIds,
    };
  }

  Championship copyWith({
    String? id,
    String? name,
    String? season,
    List<String>? clubIds,
  }) {
    return Championship(
      id: id ?? this.id,

      name: name ?? this.name,

      season:
          season ?? this.season,

      clubIds:
          clubIds ?? this.clubIds,
    );
  }
}