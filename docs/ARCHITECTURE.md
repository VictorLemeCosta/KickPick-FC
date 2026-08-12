# ARCHITECTURE — v1.0

## 1. Architectural principle

The architecture must protect the domain/game rules from UI and infrastructure changes.

The game should be designed so that the scoring engine can be tested independently of:
- React/UI;
- database;
- external sports-data provider;
- authentication;
- deployment platform.

## 2. Logical layers

Preferred separation:

### Presentation
Screens, components, forms, animations, dashboards.

### Application
Use cases/orchestration:
- submit prediction;
- lock prediction;
- evaluate match;
- calculate user reward;
- update progression.

### Domain
Core rules:
- prediction;
- match;
- event;
- player performance;
- xG;
- goalkeeper performance;
- attacker performance;
- scoring engine;
- progression.

### Infrastructure
External concerns:
- database;
- sports-data API;
- authentication;
- payments, if ever added;
- notifications;
- external services.

## 3. Critical rule

Business rules must not be duplicated across frontend and backend.

The authoritative calculation should live in the domain/application layer appropriate to the chosen stack.

## 4. Data provenance

External match data should be stored with enough provenance/version information to reproduce a score calculation.

## 5. Current implementation status

The exact technology stack and current repository architecture are not captured in this v1.0 memory.

Do not invent a stack.

Before making architecture-specific changes, inspect the actual repository.

## 6. Architecture changes

Any change that affects:
- domain boundaries;
- scoring;
- data contracts;
- persistence;
- authentication;
- external API contracts

should be recorded in DECISIONS.md.
