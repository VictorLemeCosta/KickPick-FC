class ChatMessage {
  final String id;

  final String conversationId;

  final String senderId;

  final String text;

  final DateTime createdAt;

  final bool isSystemMessage;

  const ChatMessage({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.text,
    required this.createdAt,
    this.isSystemMessage = false,
  });

  ChatMessage copyWith({
    String? id,
    String? conversationId,
    String? senderId,
    String? text,
    DateTime? createdAt,
    bool? isSystemMessage,
  }) {
    return ChatMessage(
      id: id ?? this.id,
      conversationId:
          conversationId ??
              this.conversationId,
      senderId:
          senderId ??
              this.senderId,
      text: text ?? this.text,
      createdAt:
          createdAt ??
              this.createdAt,
      isSystemMessage:
          isSystemMessage ??
              this.isSystemMessage,
    );
  }
}