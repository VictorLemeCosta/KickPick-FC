enum ClubApplicationStatus {
  pending,
  approved,
  rejected,
}

class ClubApplication {
  final String id;

  final String clubId;

  final String userId;

  final ClubApplicationStatus status;

  final DateTime createdAt;

  const ClubApplication({
    required this.id,
    required this.clubId,
    required this.userId,
    required this.status,
    required this.createdAt,
  });

  factory ClubApplication.fromJson(
  Map<String, dynamic> json,
) {
  return ClubApplication(
    id: json['id'],

    clubId: json['club_id'],

    userId: json['user_id'],

    status:
        ClubApplicationStatus
            .values
            .firstWhere(
      (status) =>
          status.name ==
          json['status'],
    ),

    createdAt:
        DateTime.parse(
      json['created_at'],
    ),
  );
}

Map<String, dynamic> toJson() {
  return {
    'id': id,

    'club_id': clubId,

    'user_id': userId,

    'status': status.name,

    'created_at':
        createdAt
            .toIso8601String(),
  };
}

  ClubApplication copyWith({
    String? id,
    String? clubId,
    String? userId,
    ClubApplicationStatus? status,
    DateTime? createdAt,
  }) {
    return ClubApplication(
      id: id ?? this.id,
      clubId: clubId ?? this.clubId,
      userId: userId ?? this.userId,
      status: status ?? this.status,
      createdAt:
          createdAt ?? this.createdAt,
    );
  }
}