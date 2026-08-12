import 'club_role.dart';

class ClubMember {
  final String id;

  final String userId;

  final String clubId;

  final ClubRole role;

  final DateTime joinedAt;

  const ClubMember({
    required this.id,
    required this.userId,
    required this.clubId,
    required this.role,
    required this.joinedAt,
  });

  factory ClubMember.fromJson(
  Map<String, dynamic> json,
) {
  return ClubMember(
    id: json['id'],

    userId: json['user_id'],

    clubId: json['club_id'],

    role: ClubRole.values
        .firstWhere(
      (role) =>
          role.name ==
          json['role'],
    ),

    joinedAt:
        DateTime.parse(
      json['joined_at'],
    ),
  );
}

Map<String, dynamic> toJson() {
  return {
    'id': id,

    'user_id': userId,

    'club_id': clubId,

    'role': role.name,

    'joined_at':
        joinedAt
            .toIso8601String(),
  };
}

  ClubMember copyWith({
    String? id,
    String? userId,
    String? clubId,
    ClubRole? role,
    DateTime? joinedAt,
  }) {
    return ClubMember(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      clubId: clubId ?? this.clubId,
      role: role ?? this.role,
      joinedAt: joinedAt ?? this.joinedAt,
    );
  }
}