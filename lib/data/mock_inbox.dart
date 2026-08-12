import '../models/inbox_message.dart';

final mockInbox = [

  InboxMessage(
    id: 'msg_001',
    type: InboxMessageType.transferOffer,
    status: InboxMessageStatus.unread,
    title: 'Proposta por Pedro',
    body: 'Palmeiras ofereceu R\$ 32M.',
    createdAt:
        DateTime.now(),
    negotiationId: 'neg_001',
  ),

  InboxMessage(
    id: 'msg_002',
    type: InboxMessageType.clubApplication,
    status: InboxMessageStatus.unread,
    title: 'Pedido de ingresso',
    body: 'Michael deseja entrar no Flamengo.',
    createdAt:
        DateTime.now(),
    negotiationId: 'neg_004',
  ),
];