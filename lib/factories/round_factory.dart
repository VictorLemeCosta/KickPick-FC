import '../models/match.dart';
import '../models/round.dart';

class RoundFactory {
  static Round buildRound({
    required String id,
    required String name,
    required RoundType type,
    required List<Match> matches,
  }) {
    final orderedMatches = [...matches]
      ..sort(
        (a, b) => a.matchDate.compareTo(b.matchDate),
      );

    final firstMatchAt = orderedMatches.first.matchDate;

    return Round(
      id: id,
      name: name,
      type: type,
      firstMatchAt: firstMatchAt,
      opensAt: firstMatchAt.subtract(
        const Duration(days: 7),
      ),
      lockAt: firstMatchAt.subtract(
        const Duration(minutes: 30),
      ),
      matches: orderedMatches,
    );
  }
}