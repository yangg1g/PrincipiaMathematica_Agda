{-# OPTIONS --cumulativity #-}
module Star9 where

-- ∗9. Extension of the Theory of Deduction — formalized through ∗9·421 below
-- Quantified matrices are  Term → Propₚ  (elementary matrices);  raw∨  keeps  ∨  total when a single All/Ex does not absorb the right disjunct.

open import Agda.Primitive using (Level)
open import Agda.Builtin.Equality using (_≡_; refl)
open import Agda.Builtin.Nat using (Nat; zero)
open import PMClasses
open import Star1
  renaming
    ( Prop to Propₚ
    ; ~_ to ~ₚ_
    ; _∨_ to _∨ₚ_
    ; _⊃_ to _⊃ₚ_
    ; ⊢_ to ⊢ₚ_
    )
open import Star2

data Variable : Set

data Prop : Set where
  Allₚ : (Variable → Propₚ) → Prop
  Exₚ  : (Variable → Propₚ) → Prop
  All : (Variable → Prop) → Prop
  Ex : (Variable → Prop) → Prop

private
  variable
    x y z : Variable
    p q r s : Propₚ
    P Q : Prop
    φ ψ ξ ζ : Variable → Propₚ
    Φ Ψ : Variable → Prop

infix 40 ~_
infixr 30 _∨-pP_ _∨-Pp_ _∨-PP_

~_ : Prop → Prop
~ (Allₚ f) = Exₚ (λ x → ~ₚ (f x))
~ (Exₚ f) = Allₚ (λ x → ~ₚ (f x))
~ (All f) = Ex (λ x → ~ (f x))
~ (Ex f) = All (λ x → ~ (f x))

_∨-pP_ : Propₚ → Prop → Prop
p ∨-pP (Allₚ f) = Allₚ (λ x → p ∨ₚ (f x))
p ∨-pP (Exₚ f) = Exₚ (λ x → p ∨ₚ (f x))
p ∨-pP (All f) = All (λ x → p ∨-pP (f x))
p ∨-pP (Ex f) = Ex (λ x → p ∨-pP (f x))

_∨-Pp_ : Prop → Propₚ → Prop
(Allₚ f) ∨-Pp p = Allₚ (λ x → f x ∨ₚ p)
(Exₚ f) ∨-Pp p = Exₚ (λ x → f x ∨ₚ p)
(All f) ∨-Pp p = All (λ x → (f x) ∨-Pp p)
(Ex f) ∨-Pp p = Ex (λ x → (f x) ∨-Pp p)

_∨-PP_ : Prop → Prop → Prop
(Allₚ f) ∨-PP (Allₚ g) = All (λ x → (f x) ∨-pP (Allₚ g))
(Exₚ f) ∨-PP (Exₚ g) = Ex (λ x → (f x) ∨-pP (Exₚ g))
(Allₚ f) ∨-PP (Exₚ g) = All (λ x → (f x) ∨-pP (Exₚ g))
(Exₚ f) ∨-PP (Allₚ g) = All (λ y → (Exₚ f) ∨-Pp (g y))
(Allₚ f) ∨-PP (All g) = All (λ x → (f x) ∨-pP (All g))
(Exₚ f) ∨-PP (Ex g) = Ex (λ x → (f x) ∨-pP (Ex g))
(Allₚ f) ∨-PP (Ex g) = All (λ x → (f x) ∨-pP (Ex g))
(Exₚ f) ∨-PP (All g) = All (λ y → (Exₚ f) ∨-PP (g y))
(All f) ∨-PP (All g) = All (λ x → (f x) ∨-PP (All g))
(Ex f) ∨-PP (Ex g) = Ex (λ x → (f x) ∨-PP (Ex g))
(All f) ∨-PP (Ex g) = All (λ x → (f x) ∨-PP (Ex g))
(Ex f) ∨-PP (All g) = All (λ y → (Ex f) ∨-PP (g y))
(All f) ∨-PP (Allₚ g) = All (λ x → (f x) ∨-PP (Allₚ g))
(All f) ∨-PP (Exₚ g) = All (λ x → (f x) ∨-PP (Exₚ g))
(Ex f) ∨-PP (Allₚ g) = All (λ y → (Ex f) ∨-Pp (g y))
(Ex f) ∨-PP (Exₚ g) = Ex (λ x → (f x) ∨-PP (Exₚ g))

instance
  HasDisj-Prop-Prop-Prop : HasDisj Prop Prop Prop
  HasDisj-Prop-Prop-Prop = record { _∨_ = _∨-PP_ }

  HasDisj-Propₚ-Prop-Prop : HasDisj Propₚ Prop Prop
  HasDisj-Propₚ-Prop-Prop = record { _∨_ = _∨-pP_ }

  HasDisj-Prop-Propₚ-Prop : HasDisj Prop Propₚ Prop
  HasDisj-Prop-Propₚ-Prop = record { _∨_ = _∨-Pp_ }

open HasDisj ⦃ ... ⦄ public

⊃-PP : Prop → Prop → Prop
⊃-PP p q = ~ p ∨ q

⊃-Pp : Prop → Propₚ → Prop
⊃-Pp p q = ~ p ∨-Pp q

⊃-pP : Propₚ → Prop → Prop
⊃-pP p q = ~ₚ p ∨-pP q

instance
  HasSub-Prop-Prop-Prop : HasSub Prop Prop Prop
  HasSub-Prop-Prop-Prop = record { _⊃_ = ⊃-PP }

  HasSub-Prop-Propₚ-Prop : HasSub Prop Propₚ Prop
  HasSub-Prop-Propₚ-Prop = record { _⊃_ = ⊃-Pp }

  HasSub-Propₚ-Prop-Prop : HasSub Propₚ Prop Prop
  HasSub-Propₚ-Prop-Prop = record { _⊃_ = ⊃-pP }

  HasSub-Propₚ-Propₚ-Propₚ : HasSub Propₚ Propₚ Propₚ
  HasSub-Propₚ-Propₚ-Propₚ = record { _⊃_ = _⊃ₚ_ }

open HasSub ⦃ ... ⦄ public

syntax Exₚ (λ x → p) = ⟨ ∃ x ⟩ₚ · p
syntax Allₚ (λ x → p) = ⟨ x ⟩ₚ · p
syntax Ex (λ x → p) = ⟨ ∃ x ⟩ · p
syntax All (λ x → p) = ⟨ x ⟩ · p

data ⊢-P_ : Prop → Set where
  *9·1ₚ : ⊢-P (φ x) ⊃ ⟨ ∃ x ⟩ₚ · φ x
  *9·1 : ∀ {φ : Variable → Prop} {x : Variable} → ⊢-P (φ x) ⊃ ⟨ ∃ x ⟩ · φ x

  *9·11ₚ : ⊢-P (φ x) ∨ₚ (φ y) ⊃ ⟨ ∃ z ⟩ₚ · φ z
  *9·11 : ∀ {φ : Variable → Prop} {x  y : Variable} → ⊢-P (φ x) ∨ (φ y) ⊃ ⟨ ∃ z ⟩ · φ z

  *9·13ₚ : (∀ {x : Variable} → ⊢ₚ (φ x)) → ⊢-P ⟨ x ⟩ₚ · φ x
  *9·13 : (∀ {x : Variable} → ⊢-P (Φ x)) → ⊢-P ⟨ x ⟩ · Φ x

  *1·11 : ⊢-P P → ⊢-P (P ⊃ Q) → ⊢-P Q
  *1·11ₚ : ⊢ₚ p → ⊢-P (p ⊃ Q) → ⊢-P Q

instance
  HasProvable-Star9 : HasProvable Prop
  HasProvable-Star9 = record { ⊢_ = ⊢-P_ }

open HasProvable ⦃ ... ⦄ public

*9·1ₚ' : ⊢ₚ (φ x) → ⊢ ⟨ ∃ x ⟩ₚ · φ x
*9·1ₚ' hp = *1·11ₚ hp *9·1ₚ

*9·1' : ∀ {φ : Variable → Prop} {x : Variable} → ⊢ (φ x) → ⊢ ⟨ ∃ x ⟩ · φ x
*9·1' {φ} {x} hp = *1·11 hp *9·1


*9·2 : ⊢ (⟨ x ⟩ₚ · (φ x)) ⊃ (φ y)
*9·2 = *9·1ₚ' *2·1 

*9·21 : ⊢ (⟨ x ⟩ₚ · ((φ x) ⊃ (ψ x))) ⊃ ((⟨ x ⟩ₚ · (φ x)) ⊃ (⟨ x ⟩ₚ · (ψ x)))
*9·21 = *9·13 (*9·1' (*9·1ₚ' *2·08))

*9·22 : ⊢ (⟨ x ⟩ₚ · ((φ x) ⊃ (ψ x))) ⊃ ((⟨ ∃ x ⟩ₚ · (φ x)) ⊃ (⟨ ∃ x ⟩ₚ · (ψ x)))
*9·22 = *9·13 (*9·1' (*9·1ₚ' *2·08))

*9·23 : ⊢ (⟨ x ⟩ₚ · (φ x)) ⊃ (⟨ x ⟩ₚ · (φ x))
*9·23 = *9·13 (λ { {y} → *9·1ₚ' {x = y} *2·1 })

*9·24 : ⊢ (⟨ ∃ x ⟩ₚ · (φ x)) ⊃ (⟨ ∃ x ⟩ₚ · (φ x))
*9·24 = *9·13 (λ { {y} → *9·1ₚ' {x = y} *2·1 })

*9·25 : ⊢ (⟨ x ⟩ₚ · (p ∨ₚ (φ x))) ⊃ (p ∨ (⟨ x ⟩ₚ · (φ x)))
*9·25 = *9·23

*9·3 : ⊢ ((⟨ x ⟩ₚ · (φ x)) ∨ (⟨ x ⟩ₚ · (φ x))) ⊃ (⟨ x ⟩ₚ · (φ x))
*9·3 = *9·13 (*9·1' (*9·1ₚ' *1·2))

*9·31 : ⊢ ((⟨ ∃ x ⟩ₚ · (φ x)) ∨ (⟨ ∃ x ⟩ₚ · (φ x))) ⊃ (⟨ ∃ x ⟩ₚ · (φ x))
*9·31 = *9·13 (*9·13 *9·11ₚ)

-- ∗9·32–∗9·421 (star9_extension_of_theory_of_deduction.md): no new Pp.

*9·32 : ⊢ q ⊃ ((⟨ x ⟩ₚ · (φ x)) ∨ q)
*9·32 = *1·11 (*9·13ₚ *1·3) *9·25

*9·33 : ⊢ q ⊃ ((⟨ ∃ x ⟩ₚ · (φ x)) ∨ q)
*9·33 = *1·11ₚ *1·3 *9·1ₚ

*9·34 : ⊢ (⟨ x ⟩ₚ · (φ x)) ⊃ (p ∨ (⟨ x ⟩ₚ · (φ x)))
*9·34 = *1·11 (*9·13ₚ *1·3) *9·21

*9·35 : ⊢ (⟨ ∃ x ⟩ₚ · (φ x)) ⊃ (p ∨ (⟨ ∃ x ⟩ₚ · (φ x)))
*9·35 = *1·11 (*9·13ₚ *1·3) *9·22

*9·36 : ⊢ (p ∨ (⟨ x ⟩ₚ · (φ x))) ⊃ ((⟨ x ⟩ₚ · (φ x)) ∨ p)
*9·36 = *1·11 (*9·13ₚ *1·4) *9·21

*9·361 : ⊢ ((⟨ x ⟩ₚ · (φ x)) ∨ p) ⊃ (p ∨ (⟨ x ⟩ₚ · (φ x)))
*9·361 = *1·11 (*9·13ₚ *1·4) *9·21

*9·37 : ⊢ (p ∨ (⟨ ∃ x ⟩ₚ · (φ x))) ⊃ ((⟨ ∃ x ⟩ₚ · (φ x)) ∨ p)
*9·37 = *1·11 (*9·13ₚ *1·4) *9·22

*9·371 : ⊢ ((⟨ ∃ x ⟩ₚ · (φ x)) ∨ p) ⊃ (p ∨ (⟨ ∃ x ⟩ₚ · (φ x)))
*9·371 = *1·11 (*9·13ₚ *1·4) *9·22

*9·4 : ⊢ (p ∨ (q ∨ (⟨ x ⟩ₚ · φ x))) ⊃ (q ∨ (p ∨ (⟨ x ⟩ₚ · φ x)))
*9·4 = *1·11 (*9·13ₚ *1·5) *9·21

*9·401 : ⊢ (p ∨ (q ∨ (⟨ ∃ x ⟩ₚ · φ x))) ⊃ (q ∨ (p ∨ (⟨ ∃ x ⟩ₚ · φ x)))
*9·401 = *1·11 (*9·13ₚ *1·5) *9·22

*9·41 : ⊢ (p ∨ (⟨ x ⟩ₚ · ((φ x) ∨ₚ r))) ⊃ ((⟨ x ⟩ₚ · φ x) ∨ (p ∨ₚ r))
*9·41 = *1·11 (*9·13ₚ *1·5) *9·21

*9·411 : ⊢ (p ∨ (⟨ ∃ x ⟩ₚ · ((φ x) ∨ₚ r))) ⊃ ((⟨ ∃ x ⟩ₚ · φ x) ∨ (p ∨ₚ r))
*9·411 = *1·11 (*9·13ₚ *1·5) *9·22

*9·42 : ⊢ ((⟨ x ⟩ₚ · φ x) ∨ (q ∨ₚ r)) ⊃ (q ∨ (⟨ x ⟩ₚ · ((φ x) ∨ₚ r)))
*9·42 = *1·11 (*9·13ₚ *1·5) *9·21

*9·421 : ⊢ ((⟨ ∃ x ⟩ₚ · φ x) ∨ (q ∨ₚ r)) ⊃ (q ∨ (⟨ ∃ x ⟩ₚ · ((φ x) ∨ₚ r)))
*9·421 = *1·11 (*9·13ₚ *1·5) *9·22

*9·5 : ⊢ (p ⊃ₚ q) ⊃ ((p ∨ (⟨ x ⟩ₚ · φ x)) ⊃ (q ∨ (⟨ y ⟩ₚ · φ y)))
*9·5 = *9·13 (*9·1ₚ' *2·38)

*9·501 : ⊢ (p ⊃ₚ q) ⊃ ((p ∨ (⟨ ∃ x ⟩ₚ · φ x)) ⊃ (q ∨ (⟨ ∃ y ⟩ₚ · φ y)))
*9·501 = *9·13 (*9·1ₚ' *2·38)

*9·51 : ⊢ (p ⊃ (⟨ x ⟩ₚ · φ x)) ⊃ ((p ∨ₚ r) ⊃ (⟨ x ⟩ₚ · ((φ x) ∨ₚ r)))
*9·51 = *1·11 (*9·13ₚ *2·38) *9·21

*9·511 : ⊢ (p ⊃ (⟨ ∃ x ⟩ₚ · φ x)) ⊃ ((p ∨ₚ r) ⊃ (⟨ ∃ x ⟩ₚ · ((φ x) ∨ₚ r)))
*9·511 = *1·11 (*9·13ₚ *2·38) *9·22

*9·52 : ⊢ ((⟨ x ⟩ₚ · φ x) ⊃ q) ⊃ ((⟨ x ⟩ₚ · ((φ x) ∨ₚ r)) ⊃ (q ∨ₚ r))
*9·52 = *1·11 (*9·13ₚ *2·38) *9·22

*9·521 : ⊢ ((⟨ ∃ x ⟩ₚ · φ x) ⊃ q) ⊃ ((⟨ ∃ x ⟩ₚ · ((φ x) ∨ₚ r)) ⊃ (q ∨ₚ r))
*9·521 = *1·11 (*9·13ₚ *2·38) *9·21

