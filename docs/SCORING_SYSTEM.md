# SCORING SYSTEM — v1.0

## 1. Purpose

The scoring system is one of the project's main differentiators.

It must evaluate prediction quality using actual football performance/events, not only a conventional result-match rule.

## 2. Protected mechanics

The design discussion established the importance of:
- xG;
- attacker performance;
- goalkeeper performance;
- first-half performance/events;
- second-half performance/events;
- dynamic evaluation of the prediction against the real match.

## 3. Example design principle

If an attacker produces a high xG during a period while the goalkeeper has relatively few saves, the evaluation should be able to distinguish this situation from a superficially identical final score where the underlying performance was different.

This is a design principle, not a finalized numeric formula.

## 4. Important distinction

The system should distinguish:
- what the user predicted;
- what actually happened;
- how strongly the real events support or contradict the prediction;
- how difficult/valuable the prediction was, when the approved model includes difficulty;
- how the result translates into score/XP/progression.

## 5. Formula status

The exact production formula is NOT declared complete in v1.0.

Do not invent:
- weights;
- multipliers;
- caps;
- thresholds;
- normalization;
- xG bands;
- goalkeeper coefficients;
- attacker coefficients;
- phase coefficients.

When those values are finalized, record them here and add automated tests.

## 6. Required engineering properties

The scoring engine should be:
- deterministic;
- independently testable;
- versioned;
- explainable;
- reproducible from stored match data;
- separated from UI code.

## 7. Scoring auditability

For every final score, the system should eventually be able to explain why the user received it.

Prefer a breakdown such as:
- base component;
- performance component;
- phase component;
- player component;
- bonus/penalty;
- final score.

Exact categories are TBD until approved.

## 8. Versioning

If the scoring formula changes in the future, it should be versioned rather than silently changing historical results.

Example:
- scoring-v1;
- scoring-v2.

Historical match results should remain reproducible using the version under which they were calculated.
