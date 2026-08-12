import '../models/negotiation.dart';

final mockNegotiations = [

  // ==========================
  // PROPOSTA DE TRANSFERÊNCIA
  // ==========================

  Negotiation(
    id: 'neg_001',
    type: NegotiationType.transferOffer,
    status: NegotiationStatus.pending,
    playerId: 'fla_011',
    sourceClubId: 'flamengo',
    targetClubId: 'palmeiras',
    offerValue: 32000000,
    offeredSalary: 1100000,
    createdAt: DateTime.now().subtract(
      const Duration(days: 1),
    ),
  ),

  // ==========================
  // TRANSFERÊNCIA ACEITA
  // ==========================

  Negotiation(
    id: 'neg_002',
    type: NegotiationType.transferOffer,
    status: NegotiationStatus.accepted,
    playerId: 'cor_001',
    sourceClubId: 'corinthians',
    targetClubId: 'gremio',
    offerValue: 18000000,
    offeredSalary: 850000,
    createdAt: DateTime.now().subtract(
      const Duration(days: 3),
    ),
  ),

  // ==========================
  // PRÉ-CONTRATO
  // ==========================

  Negotiation(
    id: 'neg_003',
    type: NegotiationType.preContract,
    status: NegotiationStatus.pending,
    playerId: 'fla_010',
    sourceClubId: 'flamengo',
    targetClubId: 'sao_paulo',
    offerValue: 0,
    offeredSalary: 1300000,
    createdAt: DateTime.now().subtract(
      const Duration(days: 2),
    ),
  ),

  // ==========================
  // PEDIDO DE INGRESSO
  // JOGADOR SEM CLUBE
  // ==========================

  Negotiation(
    id: 'neg_004',
    type: NegotiationType.clubApplication,
    status: NegotiationStatus.pending,
    playerId: 'free_001',
    sourceClubId: null,
    targetClubId: 'flamengo',
    offerValue: 0,
    offeredSalary: 500000,
    createdAt: DateTime.now().subtract(
      const Duration(hours: 5),
    ),
  ),

  // ==========================
  // RENOVAÇÃO CONTRATUAL
  // ==========================

  Negotiation(
    id: 'neg_005',
    type: NegotiationType.contractRenewal,
    status: NegotiationStatus.pending,
    playerId: 'fla_010',
    sourceClubId: 'flamengo',
    targetClubId: 'flamengo',
    offerValue: 0,
    offeredSalary: 1400000,
    createdAt: DateTime.now().subtract(
      const Duration(hours: 12),
    ),
  ),

  // ==========================
  // PROPOSTA RECUSADA
  // ==========================

  Negotiation(
    id: 'neg_006',
    type: NegotiationType.transferOffer,
    status: NegotiationStatus.rejected,
    playerId: 'pal_001',
    sourceClubId: 'palmeiras',
    targetClubId: 'corinthians',
    offerValue: 12000000,
    offeredSalary: 650000,
    createdAt: DateTime.now().subtract(
      const Duration(days: 7),
    ),
  ),
];