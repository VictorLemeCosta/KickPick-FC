class Contract {
  final String id;

  final String clubId;

  final String playerId;

  final double salary;

  final DateTime startDate;

  final DateTime endDate;

  final bool transferListed;

  final double releaseClause;

  final double terminationPenalty;

  final bool abandoned;

  const Contract({
    required this.id,
    required this.clubId,
    required this.playerId,
    required this.salary,
    required this.startDate,
    required this.endDate,
    required this.transferListed,

    this.releaseClause = 0,

    this.terminationPenalty = 0,

    this.abandoned = false,
  });

  factory Contract.fromJson(
  Map<String, dynamic> json,
) {
  return Contract(
    id: json['id'],

    clubId: json['club_id'],

    playerId: json['player_id'],

    salary:
        (json['salary'] ?? 0)
            .toDouble(),

    startDate:
        DateTime.parse(
      json['start_date'],
    ),

    endDate:
        DateTime.parse(
      json['end_date'],
    ),

    transferListed:
        json['transfer_listed'] ??
            false,

    releaseClause:
        (json['release_clause'] ?? 0)
            .toDouble(),

    terminationPenalty:
        (json['termination_penalty'] ?? 0)
            .toDouble(),

    abandoned:
        json['abandoned'] ?? false,
      );
}

Map<String, dynamic> toJson() {
  return {
    'id': id,

    'club_id': clubId,

    'player_id': playerId,

    'salary': salary,

    'start_date':
        startDate
            .toIso8601String(),

    'end_date':
        endDate
            .toIso8601String(),

    'transfer_listed':
        transferListed,
    
    'release_clause':
    releaseClause,

    'termination_penalty':
        terminationPenalty,

    'abandoned':
        abandoned,
  };
}

  bool get isActive {
    return endDate.isAfter(
      DateTime.now(),
    );
  }

  bool get isPreContractAllowed {

    final remainingDays =
        endDate
            .difference(
              DateTime.now(),
            )
            .inDays;

    return remainingDays <= 21;
  }

  bool get isExpired {

    return endDate.isBefore(
      DateTime.now(),
    );
  }

  Contract copyWith({
    String? id,
    String? clubId,
    String? playerId,
    double? salary,
    DateTime? startDate,
    DateTime? endDate,
    bool? transferListed,
    double? releaseClause,
    double? terminationPenalty,
    bool? abandoned,
  }) {
    return Contract(
      id: id ?? this.id,
      clubId: clubId ?? this.clubId,
      playerId: playerId ?? this.playerId,
      salary: salary ?? this.salary,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      transferListed:transferListed ?? this.transferListed,
      releaseClause: releaseClause ??  this.releaseClause,
      terminationPenalty: terminationPenalty ?? this.terminationPenalty,
      abandoned: abandoned ?? this.abandoned,
    );
  }
}