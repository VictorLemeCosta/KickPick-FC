import '../models/conversation.dart';

final mockConversations = [

  Conversation(
    id: 'conv_001',
    type: ConversationType.club,
    title: 'Flamengo',
    participantIds: [
      'fla_001',
      'fla_002',
      'fla_003',
      'fla_004',
      'fla_005',
      'fla_006',
      'fla_007',
      'fla_008',
      'fla_009',
      'fla_010',
      'fla_011',
    ],
    createdAt:
        DateTime.now().subtract(
      const Duration(days: 30),
    ),
  ),

  Conversation(
    id: 'conv_002',
    type: ConversationType.private,
    title: 'Michael',
    participantIds: [
      'captain_001',
      'fla_012',
    ],
    createdAt:
        DateTime.now().subtract(
      const Duration(days: 2),
    ),
  ),

  Conversation(
    id: 'conv_003',
    type: ConversationType.negotiation,
    title: 'Proposta por Pedro',
    participantIds: [
      'flamengo',
      'palmeiras',
    ],
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 6),
    ),
  ),

  Conversation(
    id: 'conv_004',
    type: ConversationType.system,
    title: 'Sistema',
    participantIds: [
      'flamengo',
    ],
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 4),
    ),
  ),
];