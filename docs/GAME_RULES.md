# GAME RULES — v1.0

## 1. Basic loop

The intended high-level loop is:

1. User views an upcoming football match.
2. User makes prediction(s).
3. Match takes place.
4. Real match events/performance are collected.
5. The system evaluates the prediction against what actually happened.
6. The user receives points/rewards/progression according to the approved scoring system.
7. The result contributes to the player's ongoing RPG-like progression.

## 2. Match phases

The design explicitly recognizes first-half and second-half dynamics.

The system must be capable of evaluating events/performance by phase rather than assuming that only the final score matters.

## 3. Player performance

The game can evaluate player-level performance.

Particular attention is given to:
- attackers;
- goalkeepers;
- expected goals (xG);
- saves/defensive actions where the approved scoring model uses them.

## 4. Prediction philosophy

A prediction should have meaningful strategic value.

The system should reward prediction quality rather than merely matching a superficial final outcome.

## 5. RPG layer

The game is intended to have a progression layer so the user feels that their skill and history matter.

Exact progression mechanics are TBD in this v1.0 document unless explicitly defined in a later approved decision.

## 6. Anti-simplification rule

A future implementation must not turn this game into a generic score-prediction product simply because that is easier to code.

Any such change requires explicit product approval.

## 7. TBD rules

The following need exact approved definitions before final implementation:
- prediction lock time;
- allowed prediction types;
- whether predictions can be changed;
- scoring windows;
- tie handling;
- missing-data handling;
- postponed/cancelled matches;
- corrections to provider data;
- XP/level rules;
- rewards;
- leaderboard rules.
