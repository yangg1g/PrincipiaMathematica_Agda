module Star1 where

-- ∗1. Primitive Ideas and Propositions
--
-- From Whitehead & Russell, Principia Mathematica (1910)
-- (star1_primitive_ideas_and_propositions.md)

------------------------------------------------------------------------
-- Primitive Ideas
------------------------------------------------------------------------

-- (1) Elementary propositions.
-- An "elementary" proposition is one which does not involve any
-- variables, i.e. one which does not involve such words as "all,"
-- "some," "the" or equivalents.
-- The letters p, q, r, s denote elementary propositions.

postulate Prop : Set

-- Sheffer stroke (NAND): p ∣ q means "not both p and q," i.e. ~(p ∧ q).
-- This is the single primitive connective; negation and disjunction are
-- defined (Sheffer 1913).

infixl 30 _∣_
postulate _∣_ : Prop → Prop → Prop

-- (5) Negation.  ~p .=. p ∣ p
--     (since p ∣ p .=. ~(p ∧ p) .=. ~p).

infix 40 ~_
~_ : Prop → Prop
~ p = p ∣ p

-- (6) Disjunction.  p ∨ q .=. ~p ∣ ~q .=. (p ∣ p) ∣ (q ∣ q)
--     (since ~p ∣ ~q .=. ~(~p ∧ ~q) .=. p ∨ q).

infixl 30 _∨_
_∨_ : Prop → Prop → Prop
p ∨ q = (p ∣ p) ∣ (q ∣ q)

------------------------------------------------------------------------
-- ∗1.01. p ⊃ q .=. ~p ∨ q    Df
--
-- "What is implied by a true proposition is true."  Hence "p implies q"
-- means: "Either p is false or q is true."
------------------------------------------------------------------------

infixr 20 _⊃_
_⊃_ : Prop → Prop → Prop
p ⊃ q = ~ p ∨ q

private
  variable
    p q r s : Prop
    A : Set
    φ ψ : A → Prop

------------------------------------------------------------------------
-- (3)(4) Assertion.
--
-- ⊢ . p  designates the asserted proposition.
-- The sign "⊢" is called the assertion-sign;
-- it may be read "it is true that."
--
-- Derivability in the system of ∗1 is captured as an inductive
-- type whose constructors correspond one-to-one to the
-- Primitive Propositions (Pp).
------------------------------------------------------------------------

infix 5 ⊢_

data ⊢_ : Prop → Set where

  -- ∗1.1  Anything implied by a true elementary proposition
  --       is true.  Pp
  --       (Modus Ponens / Rule of Detachment)
  *1·1 : ⊢ p → ⊢ (p ⊃ q) → ⊢ q

  -- ∗1.2  ⊢ : p ∨ p .⊃. p          Pp
  --       If either p is true or p is true, then p is true.  (Taut)
  *1·2 : ⊢ (p ∨ p ⊃ p)

  -- ∗1.3  ⊢ : q .⊃. p ∨ q          Pp
  --       If q is true, then "p or q" is true.  (Add)
  *1·3 : ⊢ (q ⊃ p ∨ q)

  -- ∗1.4  ⊢ : p ∨ q .⊃. q ∨ p      Pp
  --       "p or q" implies "q or p."  (Perm)
  *1·4 : ⊢ (p ∨ q ⊃ q ∨ p)

  -- ∗1.5  ⊢ : p ∨ (q ∨ r) .⊃. q ∨ (p ∨ r)    Pp
  --       Associative principle.  (Assoc)
  *1·5 : ⊢ (p ∨ (q ∨ r) ⊃ q ∨ (p ∨ r))

  -- ∗1.6  ⊢ : q ⊃ r .⊃: p ∨ q .⊃. p ∨ r     Pp
  --       If q implies r, then "p or q" implies "p or r."  (Sum)
  *1·6 : ⊢ ((q ⊃ r) ⊃ (p ∨ q ⊃ p ∨ r))

------------------------------------------------------------------------
-- Convenient aliases (used in proofs from ∗2 onward)
------------------------------------------------------------------------

MP : ⊢ p → ⊢ (p ⊃ q) → ⊢ q
MP = *1·1

-- Two- and three-step Modus Ponens (left-associated *1·1).
MP₂ : ⊢ p → ⊢ (p ⊃ q) → ⊢ (q ⊃ r) → ⊢ r
MP₂ hp hpq hqr = MP (MP hp hpq) hqr

MP₃ : ⊢ p → ⊢ (p ⊃ q) → ⊢ (q ⊃ r) → ⊢ (r ⊃ s) → ⊢ s
MP₃ hp hpq hqr hrs = MP (MP (MP hp hpq) hqr) hrs

Taut : ⊢ (p ∨ p ⊃ p)
Taut = *1·2

Add : ⊢ (q ⊃ p ∨ q)
Add = *1·3

Perm : ⊢ (p ∨ q ⊃ q ∨ p)
Perm = *1·4

Assoc : ⊢ (p ∨ (q ∨ r) ⊃ q ∨ (p ∨ r))
Assoc = *1·5

Sum : ⊢ ((q ⊃ r) ⊃ (p ∨ q ⊃ p ∨ r))
Sum = *1·6

------------------------------------------------------------------------
-- ∗1.7   If p is an elementary proposition, ~p is an elementary
--        proposition.  Pp
-- ∗1.71  If p and q are elementary propositions, p ∨ q is an
--        elementary proposition.  Pp
-- ∗1.72  If φp and ψp are elementary propositional functions which
--        take elementary propositions as arguments, φp ∨ ψp is an
--        elementary propositional function.  Pp
--        ("Axiom of identification of real variables")
--
-- These closure properties are guaranteed by the types:
--   _∣_ : Prop → Prop → Prop   (primitive)
--   ~_  : Prop → Prop          (defined)
--   _∨_ : Prop → Prop → Prop  (defined)
------------------------------------------------------------------------

------------------------------------------------------------------------
-- ∗1.11  When φx can be asserted, where x is a real variable,
--        and φx ⊃ ψx can be asserted, where x is a real variable,
--        then ψx can be asserted, where x is a real variable.  Pp
--        ("Axiom of identification of type"; also for several variables.)
--
--  In Agda:  ∀ {x} → ⊢ (φ x)  and  ∀ {x} → ⊢ (φ x ⊃ ψ x)  imply
--  ∀ {x} → ⊢ (ψ x)  by *1·1 at each x.
------------------------------------------------------------------------
*1·11 : (∀ {x} → ⊢ (φ x))
      → (∀ {x} → ⊢ (φ x ⊃ ψ x))
      → (∀ {x} → ⊢ (ψ x))
*1·11 f g = MP f g
