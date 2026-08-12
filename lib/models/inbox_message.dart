enum InboxMessageType {
  transferOffer,
  clubApplication,
  preContract,
  contractRenewal,
  system,
}

enum InboxMessageStatus {
  unread,
  read,
  archived,
}

class InboxMessage {

  final String id;

  final InboxMessageType type;

  final InboxMessageStatus status;

  final String title;

  final String body;

  final DateTime createdAt;

  final String? negotiationId;

  const InboxMessage({
    required this.id,
    required this.type,
    required this.status,
    required this.title,
    required this.body,
    required this.createdAt,
    this.negotiationId,
  });

  InboxMessage copyWith({
  String? id,
  InboxMessageType? type,
  InboxMessageStatus? status,
  String? title,
  String? body,
  DateTime? createdAt,
  String? negotiationId,
}) {
  return InboxMessage(
    id: id ?? this.id,
    type: type ?? this.type,
    status: status ?? this.status,
    title: title ?? this.title,
    body: body ?? this.body,
    createdAt: createdAt ?? this.createdAt,
    negotiationId:
        negotiationId ??
        this.negotiationId,
  );
}

}