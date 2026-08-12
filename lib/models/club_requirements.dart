class ClubRequirements {
  final int minimumReputation;

  final int minimumPredictions;

  final int minimumMatches;

  const ClubRequirements({
    required this.minimumReputation,
    required this.minimumPredictions,
    required this.minimumMatches,
  });

  factory ClubRequirements.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClubRequirements(
      minimumReputation:
          json['minimum_reputation'] ?? 0,

      minimumPredictions:
          json['minimum_predictions'] ?? 0,

      minimumMatches:
          json['minimum_matches'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'minimum_reputation':
          minimumReputation,

      'minimum_predictions':
          minimumPredictions,

      'minimum_matches':
          minimumMatches,
    };
  }

  ClubRequirements copyWith({
    int? minimumReputation,
    int? minimumPredictions,
    int? minimumMatches,
  }) {
    return ClubRequirements(
      minimumReputation:
          minimumReputation ??
              this.minimumReputation,

      minimumPredictions:
          minimumPredictions ??
              this.minimumPredictions,

      minimumMatches:
          minimumMatches ??
              this.minimumMatches,
    );
  }
}