enum ConversationType {
  club,
  private,
  system,
  negotiation,
}

class Conversation {
  final String id;

  final ConversationType type;

  final String title;

  final List<String> participantIds;

  final DateTime createdAt;

  const Conversation({
    required this.id,
    required this.type,
    required this.title,
    required this.participantIds,
    required this.createdAt,
  });

  Conversation copyWith({
    String? id,
    ConversationType? type,
    String? title,
    List<String>? participantIds,
    DateTime? createdAt,
  }) {
    return Conversation(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      participantIds:
          participantIds ??
              this.participantIds,
      createdAt:
          createdAt ??
              this.createdAt,
    );
  }
}