import '../models/contract.dart';

final mockContracts = [

  Contract(
    id: 'contract_001',
    playerId: 'fla_011',
    clubId: 'flamengo',
    startDate: DateTime(2026, 1, 1),
    endDate: DateTime(2026, 12, 31),
    salary: 900000,
    transferListed: false,
    releaseClause: 75000000,
    terminationPenalty: 30000000,
  ),

  Contract(
    id: 'contract_002',
    playerId: 'fla_010',
    clubId: 'flamengo',
    startDate: DateTime(2026, 1, 1),
    endDate: DateTime(2026, 9, 1),
    salary: 1200000,
    transferListed: false,
    releaseClause: 60000000,
    terminationPenalty: 25000000,
  ),

];
