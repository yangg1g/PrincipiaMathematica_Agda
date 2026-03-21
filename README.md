# Principia Mathematica (Agda)

Agda formalization of parts of Whitehead & Russell’s *Principia Mathematica* (1910): propositional logic from primitive ideas through later sections, with proof terms matching the book’s numbering (∗1·1, ∗2·01, …).

## Contents

| Agda module | Topic (PM) | Notes |
|-------------|------------|--------|
| `Star1.agda` | ∗1 — Primitive ideas and propositions | Assertion `⊢_`, axioms *1·1–*1·6, *1·11 |
| `Star2.agda` | ∗2 — Immediate consequences | Opens `Star1` |
| `Star3.agda` | ∗3 — Logical product | Opens `Star1`, `Star2` |
| `Star4.agda` | ∗4 — Equivalence and formal rules | Opens `Star1`–`Star3` |
| `Star5.agda` | ∗5 — Miscellaneous propositions | Opens `Star1`–`Star4` |

Companion markdown files (`star1_*.md`, …) summarize the corresponding PM text for reference.

## Logic

- **Propositions** are abstract (`postulate Prop : Set`).
- **Sheffer stroke** `_|_` (NAND) is the only primitive connective. **Negation** and **disjunction** are defined:
  - `~ p = p ∣ p`
  - `p ∨ q = (p ∣ p) ∣ (q ∣ q)`
- **Material implication** is `p ⊃ q = ~ p ∨ q` (∗1·01).

## Requirements

- [Agda](https://agda.readthedocs.io/) (version used by your setup; the library is a single flat directory).

## Build / typecheck

From this directory:

```bash
agda Star5.agda
```

This checks `Star5` and all imports (`Star4` … `Star1`). To check only the base layer:

```bash
agda Star1.agda
```

Optional: register the library so Agda finds it by name (see `PrincipiaMathematica.agda-lib`):

```bash
agda -l PrincipiaMathematica Star5.agda
```

(Your `Agda/libraries` or project setup must list this path if you use `-l`.)

## HTML documentation

To generate clickable HTML (optional):

```bash
agda --html Star5.agda
```

Output defaults to `html/` (ignored in `.gitignore`).
