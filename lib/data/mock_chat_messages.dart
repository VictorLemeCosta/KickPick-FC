import '../models/chat_message.dart';

final mockChatMessages = [

  // ==========================
  // CHAT DO CLUBE
  // ==========================

  ChatMessage(
    id: 'chat_msg_001',
    conversationId: 'conv_001',
    senderId: 'fla_006',
    text:
        'Precisamos organizar a escalação antes da próxima rodada.',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 10),
    ),
  ),

  ChatMessage(
    id: 'chat_msg_002',
    conversationId: 'conv_001',
    senderId: 'fla_007',
    text:
        'Concordo. Acho que precisamos reforçar o ataque.',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 8),
    ),
  ),

  ChatMessage(
    id: 'chat_msg_003',
    conversationId: 'conv_001',
    senderId: 'fla_011',
    text:
        'Se chegar alguém para o lado do campo, melhora bastante.',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 7),
    ),
  ),

  // ==========================
  // MENSAGEM PRIVADA
  // ==========================

  ChatMessage(
    id: 'chat_msg_004',
    conversationId: 'conv_002',
    senderId: 'captain_001',
    text:
        'Estamos com vaga no elenco. Você teria interesse em entrar no clube?',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 5),
    ),
  ),

  ChatMessage(
    id: 'chat_msg_005',
    conversationId: 'conv_002',
    senderId: 'fla_012',
    text:
        'Tenho interesse sim. Qual seria a duração do contrato?',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 4),
    ),
  ),

  // ==========================
  // NEGOCIAÇÃO
  // ==========================

  ChatMessage(
    id: 'chat_msg_006',
    conversationId: 'conv_003',
    senderId: 'palmeiras',
    text:
        'Enviamos uma proposta de R\$ 32M por Pedro.',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 6),
    ),
  ),

  ChatMessage(
    id: 'chat_msg_007',
    conversationId: 'conv_003',
    senderId: 'flamengo',
    text:
        'A proposta será avaliada pela diretoria do clube.',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 5),
    ),
  ),

  // ==========================
  // SISTEMA
  // ==========================

  ChatMessage(
    id: 'chat_msg_008',
    conversationId: 'conv_004',
    senderId: 'system',
    text:
        'Michael entrou no radar do clube como possível reforço.',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 3),
    ),
    isSystemMessage: true,
  ),

  ChatMessage(
    id: 'chat_msg_009',
    conversationId: 'conv_004',
    senderId: 'system',
    text:
        'Arrascaeta está elegível para pré-contrato em breve.',
    createdAt:
        DateTime.now().subtract(
      const Duration(hours: 2),
    ),
    isSystemMessage: true,
  ),
];