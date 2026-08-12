# DATA MODEL — v1.0

## 1. Core concepts

The system is expected to contain concepts equivalent to:

- User
- Match
- Team
- Player
- Prediction
- MatchEvent
- PlayerPerformance
- ScoringResult
- Progression/XP

Exact schema and naming must follow the actual implementation.

## 2. Prediction

A prediction represents a user's forecast for a match and must retain:
- user;
- match;
- prediction content;
- creation time;
- lock/finalization state;
- scoring version used for evaluation.

Exact prediction fields are TBD.

## 3. Match data

Match data should distinguish:
- first half;
- second half;
- final result;
- relevant player/team performance;
- events;
- xG where available.

## 4. Scoring result

A scoring result should eventually contain enough information to explain the score.

Avoid storing only a single opaque number if the design requires an explainable breakdown.

## 5. Data integrity

Provider corrections must not silently corrupt historical scoring.

The system should preserve the source/version needed to reproduce calculations.
