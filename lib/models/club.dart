class Club {

  final String id;

  final String name;

  final String logo;

  final double balance;

  final List<String> playerIds;

  const Club({
    required this.id,
    required this.name,
    required this.logo,
    required this.balance,
    required this.playerIds,
  });

  Club copyWith({
    String? id,
    String? name,
    String? logo,
    double? balance,
    List<String>? playerIds,
  }) {
    return Club(
      id: id ?? this.id,
      name: name ?? this.name,
      logo: logo ?? this.logo,
      balance: balance ?? this.balance,
      playerIds: playerIds ?? this.playerIds,
    );
  }

  factory Club.fromJson(
  Map<String, dynamic> json,
) {
  return Club(
    id: json['id'],
    name: json['name'],
    logo: json['logo'],
    balance:
        (json['balance'] ?? 0)
            .toDouble(),
    playerIds:
        List<String>.from(
      json['player_ids'] ?? [],
    ),
  );
}

Map<String, dynamic> toJson() {
  return {
    'id': id,
    'name': name,
    'logo': logo,
    'balance': balance,
    'player_ids': playerIds,
  };
}
}