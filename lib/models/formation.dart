enum FormationType {
  f442,
  f433,
  f352,
  f532,
}

class Formation {

  final FormationType type;

  final int defenders;

  final int midfielders;

  final int attackers;

  const Formation({
    required this.type,
    required this.defenders,
    required this.midfielders,
    required this.attackers,
  });
}