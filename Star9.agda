{-# OPTIONS --cumulativity #-}
module Star9 where

-- ∗9. Extension of the Theory of Deduction — through ∗9·63
-- (star9_extension_theory_deduction.md) ; definitions ∗9·01–∗9·08 as before.

open import Agda.Primitive using (Level)
open import Agda.Builtin.Nat using (Nat)
open import Agda.Builtin.Equality using (_≡_; refl)
open import Star1
open import Star2 using
  ( *2·1; *2·05; *2·06; *2·08; *2·11
  ; *2·37; *2·621; SumR; Syll; Syll₃; SyllOr
  )

private
  sym : ∀ {ℓ} {A : Set ℓ} {x y : A} → x ≡ y → y ≡ x
  sym refl = refl

  subst : ∀ {ℓ} {A : Set ℓ} (P : A → Set ℓ) {x y : A} → x ≡ y → P x → P y
  subst P refl px = px

------------------------------------------------------------------------
-- Individuals for predicates:  Term  from  var  (e.g. de Bruijn levels).
------------------------------------------------------------------------

data Term : Set where
  var : Nat → Term

------------------------------------------------------------------------
-- First-order propositions (∗9):  Prop  with Sheffer stroke +  Ex
------------------------------------------------------------------------

postulate
  Ex : (Term → Prop) → Prop

private
  variable
    x y : Term
    p q r s : Prop
    φ ψ ξ ζ : Term → Prop

-- Existential:  ⟨ ∃ x ⟩ · φ  ↦  Ex (λ x → φ)
syntax Ex (λ x → φ) = ⟨ ∃ x ⟩ · φ

------------------------------------------------------------------------
-- Universal quantifier:  (x) . φ x  as  ~(∃x . ~ φ x)
--
-- ∗9·01:  ~ (⟨ x ⟩ · φ x) ≡ ⟨ ∃ x ⟩ · ~ (φ x)
--          via ~~-inv on  ⟨ ∃ x ⟩ · ~ (φ x) .
------------------------------------------------------------------------

All : (Term → Prop) → Prop
All φ = ~ (⟨ ∃ x ⟩ · ~ (φ x))

-- Universal:  ⟨ x ⟩ · φ  ↦  All (λ x → φ)
-- (· is U+00B7; ASCII "." fails in syntax decls.)
syntax All (λ x → φ) = ⟨ x ⟩ · φ

------------------------------------------------------------------------
-- ∗9.01   ~(x).φx .=. (∃x).~φx     Df  (given All above)
-- ∗9.02   ~(∃x).φx .=. (x).~φx     Df
------------------------------------------------------------------------
postulate
  *9·01 : ~ (⟨ x ⟩ · φ x) ≡ ⟨ ∃ x ⟩ · ~ (φ x)

postulate
  *9·02 : ~ (⟨ ∃ x ⟩ · φ x) ≡ ⟨ x ⟩ · ~ (φ x)

------------------------------------------------------------------------
-- ∗9.011   ~(x).φx .=. ~{(x).φx}          Df
-- ∗9.021   ~(∃x).φx .=. ~{(∃x).φx}       Df
--
-- Notational:  ~ (All φ)  and  ~ (Ex φ) .
------------------------------------------------------------------------

------------------------------------------------------------------------
-- ∗9.03   (x).φx ∨ p  :=  (x). φx ∨ p                          Df
-- ∗9.04   p ∨ (x).φx  :=  (x). p ∨ φx                          Df
-- ∗9.05   (∃x).φx ∨ p  :=  (∃x). φx ∨ p                        Df
-- ∗9.06   p ∨ (∃x).φx  :=  (∃x). p ∨ φx                        Df
-- ∗9.07   (x).φx ∨ (∃y).ψy  :=  (x) : (∃y). φx ∨ ψy           Df
-- ∗9.08   (∃y).ψy ∨ (x).φx  :=  (x) : (∃y). ψy ∨ φx           Df
------------------------------------------------------------------------

--  PM:  (x).φx .∨. p
--  (defined disjunction on  Prop , not raw  ∣  on mixed forms)

postulate
  *9·03 : (⟨ x ⟩ · φ x) ∨ p ≡ ⟨ x ⟩ · (φ x ∨ p)

postulate
  *9·04 : p ∨ (⟨ x ⟩ · φ x) ≡ ⟨ x ⟩ · (p ∨ φ x)

postulate
  *9·05 : (⟨ ∃ x ⟩ · φ x) ∨ p ≡ ⟨ ∃ x ⟩ · (φ x ∨ p)

postulate
  *9·06 : p ∨ (⟨ ∃ x ⟩ · φ x) ≡ ⟨ ∃ x ⟩ · (p ∨ φ x)

postulate
  *9·07 : (⟨ x ⟩ · φ x) ∨ (⟨ ∃ y ⟩ · ψ y) ≡ ⟨ x ⟩ · ⟨ ∃ y ⟩ · (φ x ∨ ψ y)

postulate
  *9·08 : (⟨ ∃ y ⟩ · ψ y) ∨ (⟨ x ⟩ · φ x) ≡ ⟨ x ⟩ · ⟨ ∃ y ⟩ · (ψ y ∨ φ x)

------------------------------------------------------------------------
-- Primitive propositions (∗9.1–∗9.15)  —  star9_extension_theory_deduction.md
------------------------------------------------------------------------

-- ∗9.1   ⊢ : φx .⊃. (∃z).φz   Pp
postulate
  *9·1 : ⊢ φ x ⊃ ⟨ ∃ z ⟩ · φ z

-- ∗9.11   ⊢ : φx ∨ φy .⊃. (∃z).φz   Pp
postulate
  *9·11 : ⊢ φ x ∨ φ y ⊃ ⟨ ∃ z ⟩ · φ z

-- ∗9.12   What is implied by a true premiss is true (analogue of ∗1.1).  Pp
--
-- Implication for arbitrary  Prop  (including quantified forms) is still  _⊃_;
-- hence detachment is the same rule as  ∗1·1 .

*9·12 : ⊢ p → ⊢ (p ⊃ q) → ⊢ q
*9·12 = *1·1

-- ∗9.13   A real variable in an assertion may become an apparent variable.  Pp
--
-- Read as universal generalization:
-- from  ⊢ φ x  for parametric / arbitrary  x ,
-- to  ⊢ (x).φx .

postulate
  *9·13 : (∀ {x} → ⊢ φ x) → ⊢ ⟨ x ⟩ · φ x

------------------------------------------------------------------------
-- ∗9.131   Definition of “being of the same type.”
--
-- PM enumerates clauses (individuals, elementary functions, negations,
-- disjunctions, uniform quantification, etc.). In this development,
--  Term  is the single sort of individuals;  Prop  is the sort of
-- propositions; and  Term → Prop  is the sort of (first-order) propositional
-- functions. Same-type constraints are enforced by Agda’s typing.

------------------------------------------------------------------------
-- ∗9.14   If  φx  is significant and  a  is of the same type as  x , then  φa
--         is significant, and vice versa.  Pp
--
-- Here every  x a : Term  and every  φ : Term → Prop  yields  φ x : Prop .

------------------------------------------------------------------------
-- ∗9.15   If for some  a  there is a proposition  φa , there is  φx̂ , and
--         vice versa.  Pp
--
-- Propositional functions are primitive as maps  Term → Prop :  given  φ ,
-- each instance  φ a  is a proposition, and  λ x → φ x  is the ambient  φ̂ .

------------------------------------------------------------------------
--  Why not  {-# OPTIONS --rewriting #-}  +  {-# REWRITE *9·01 *9·05 #-} ?
--
--  Agda only accepts  REWRITE  rules
--  whose left-hand side is already in weak-head normal form.
--  Here  ~ p  and  p ∨ q  **compute**
--  to Sheffer stroke  ∣  on  Prop
--  (Star1), so the LHS of  *9·01  (*~ All φ*) reduces before matching and the
--  checker reports  RewriteLHSReduces .
--  The same happens for  *9·05 .  Automatic
--  definitional rewriting would require restating those axioms solely in  ∣
--  form (fragile/unreadable) or changing how  Prop  is encoded.
------------------------------------------------------------------------

------------------------------------------------------------------------
-- ∗9.2   ⊢ : (x).φx .⊃. φy
--
--  Dem. [*2·1]  (1)  ⊢ . ~φy ∨ φy
--       [*9·1 (~φz∨φy)/φz]  (2)  ⊢ : ~φy ∨ φy .⊃. (∃z).~φz ∨ φy
--       [(1).(2).*1·11]  (3)  ⊢ . (∃z).~φz ∨ φy
--       [(3).(*9·05)]  (4)  ⊢ : (∃z).~φz .∨. φy
--       [(4).(*9·01.*1·01)]   ⊢ : (x).φx .⊃. φy
--
--  Here  *1·01  is definitional:  p ⊃ q  =  ~p ∨ q .
--
--  Note:  `rewrite`  must attach to the  *9·2  clause itself.
--  A helper  step : _  with  `where`  tends to yield  RewritesNothing
--  because the metavariable goal does not expose the equality LHS.
--
--  Two rewrites (inverse of the Dem.  order):  *9·01  in the  ∨ φy  scope,
--  then  *9·05  with  φz := ~φz .
------------------------------------------------------------------------

*9·2 : ⊢ (⟨ x ⟩ · φ x) ⊃ φ y
*9·2 {φ} {y}
  rewrite
    *9·01 {φ}
  | *9·05 {λ t → ~ (φ t)} {φ y}
  =
  MP *2·1 *9·1

------------------------------------------------------------------------
-- ∗9·25   ⊢ :. (x). p ∨ φ x .⊃: p .∨. (x). φ x
--
--  By *9·04 the antecedent is definitionally the consequent’s LHS, so this
--  is *2·08 after  rewrite .  (PM Dem. *9·25: [*9·23.(*9·04)].)
------------------------------------------------------------------------

*9·25 : ⊢ (⟨ x ⟩ · (p ∨ φ x)) ⊃ (p ∨ (⟨ x ⟩ · φ x))
*9·25 {p} {φ}
  rewrite sym (*9·04 {p} {φ})
  =
  *2·08

------------------------------------------------------------------------
--  When  q  does not contain the bound variable: from  (x). q ⊃ ψx  to
--  q .⊃. (x).ψx  via  *9·2  +  *9·13  and  *9·25  on  ~q ∨ ψx  (= q⊃ψx).
--  (PM ∗9·32 step (2)⇒(3) without  *9·21  /  All (λ _ → q) .)
------------------------------------------------------------------------

------------------------------------------------------------------------
-- ∗9·21   ⊢ :. (x).φx ⊃ ψx .⊃: (x).φx .⊃. (x).ψx
--
--  Short Dem. (not PM’s existential chain): for each  y ,
--    *9·2  on  φ⊃ψ  and  Syll  with  *2·06  and  *9·2  on  φ  give
--    ⊢ A ⊃ B ⊃ ψ y  ( A = (x).φx⊃ψx ,  B = (x).φx ).
--  Generalize  y  (*9·13), distribute  (*9·25  with  p = ~A ), then
--  *9·04  repeats  B ⊃ ψy  under  ⟨y⟩  into  B ⊃ (y).ψy .
------------------------------------------------------------------------

*9·21 : ⊢ (⟨ x ⟩ · (φ x ⊃ ψ x)) ⊃ ((⟨ x ⟩ · φ x) ⊃ (⟨ x ⟩ · ψ x))
*9·21 {φ} {ψ}
  rewrite *9·04 {~ (⟨ x ⟩ · φ x)} {ψ}
  = MP (*9·13 (Syll *9·2 (MP *9·2 *2·06))) *9·25

------------------------------------------------------------------------
-- ∗9·22   ⊢ :. (x).φx ⊃ ψx .⊃: (∃x).φx .⊃. (∃x).ψx
--
--  Short Dem. (cf. *9·21): for each  y ,  *9·2  on  φ⊃ψ  and
--    *2·05  with  *9·1  on  ψ  give  ⊢ A ⊃ φy ⊃ E
--    ( E = (∃z).ψz ,  A = (x).φx⊃ψx ).
--  Generalize  (*9·13), distribute  (*9·25  with  p = ~A ).
--  Bridge:  *9·21  on  ∨-comm  gives  B₀ ⊃ (y).E ∨ ~φy ;
--    *9·25  then  Perm  and  *9·02  yield  B₀ ⊃ (∃φ ⊃ E).
--  Lastly  SumR  +  *2·08  peel  ~A ∨  to match  *9·21-final  shape.
------------------------------------------------------------------------

*9·22 : ⊢ (⟨ x ⟩ · (φ x ⊃ ψ x)) ⊃ ((⟨ ∃ x ⟩ · φ x) ⊃ (⟨ ∃ x ⟩ · ψ x))
*9·22 {φ} {ψ}
  rewrite *9·02 {φ}
  =
  MP (*9·13 (Syll *9·2 (MP *9·1 *2·05)))
     (Syll₃ *9·25
            (SumR (Syll₃ (MP (*9·13 *1·4) *9·21) *9·25 *1·4))
            *2·08)

------------------------------------------------------------------------
-- ∗9·23   ⊢ : (x).φx .⊃. (x).φx
--
--  [Id.*9·13.21]  —  Id  is  *2·08  ( ⊢ p⊃p );  *9·13  on  φx⊃φx ;
--  then  *9·21  with  ψ := φ .
------------------------------------------------------------------------

*9·23 : ⊢ (⟨ x ⟩ · φ x) ⊃ (⟨ x ⟩ · φ x)
*9·23 =
  MP (*9·13 *2·08) *9·21

------------------------------------------------------------------------
-- ∗9·24   ⊢ : (∃x).φx .⊃. (∃x).φx
--
--  [Id.*9·13.22]  —  same  *9·13  on  φx⊃φx , then  *9·22  with  ψ := φ .
------------------------------------------------------------------------

*9·24 : ⊢ (⟨ ∃ x ⟩ · φ x) ⊃ (⟨ ∃ x ⟩ · φ x)
*9·24 =
  MP (*9·13 *2·08) *9·22

-- ∗9·3   ⊢ : (x).φx .∨. (x).φx :⊃. (x).φx
------------------------------------------------------------------------

*9·3 : ⊢ ((⟨ x ⟩ · φ x) ∨ (⟨ y ⟩ · φ y)) ⊃ (⟨ x ⟩ · φ x)
*9·3 {φ}
  rewrite *9·03 {φ} {⟨ x ⟩ · φ x}
  =
  MP (*9·13 (Syll (SumR *9·2) *1·2)) *9·21

------------------------------------------------------------------------
-- ∗9·31   ⊢ : (∃x).φx .∨. (∃x).φx :⊃. (∃x).φx
--
--  PM Dem. is the only result that invokes ∗9·11 ; here we use  ∗9·1  with
--  ∗2·621  (  (p⊃q)⊃((p∨q)⊃q)  ).  The ∃-elimination tail is inlined:
--  from *9·22 with constant codomain and the *9·02/*9·25/*1·4 chain.
------------------------------------------------------------------------

*9·31 : ⊢ ((⟨ ∃ x ⟩ · φ x) ∨ (⟨ ∃ y ⟩ · φ y)) ⊃ (⟨ ∃ z ⟩ · φ z)
*9·31 {φ}
  rewrite *9·05 {φ} {⟨ ∃ y ⟩ · φ y}
  =
  Syll
    (MP (*9·13 (MP *9·1 *2·621)) *9·22)
    (subst
      (λ t → ⊢ (t ∨ (⟨ ∃ z ⟩ · φ z)))
      (sym *9·02)
      (MP (*9·13 (*2·11 {⟨ ∃ z ⟩ · φ z}))
          (Syll *9·25 *1·4)))

------------------------------------------------------------------------
-- ∗9·32   ⊢ : q .⊃: (x).φx .∨. q
------------------------------------------------------------------------

*9·32 : ⊢ q ⊃ ((⟨ x ⟩ · φ x) ∨ q)
*9·32 {q} {φ}
  rewrite *9·03 {φ} {q}
  =
  MP (*9·13 (MP (*9·13 *1·3) (*9·2 {λ t → q ⊃ (φ t ∨ q)}))) *9·25

------------------------------------------------------------------------
-- ∗9·33   ⊢ : q .⊃: (∃x).φx .∨. q   (“as above” —  *1·3  +  *9·1 )
------------------------------------------------------------------------

*9·33 : ⊢ q ⊃ ((⟨ ∃ x ⟩ · φ x) ∨ q)
*9·33 {q} {φ}
  rewrite *9·05 {φ} {q}
  =
  Syll *1·3 (*9·1 {x = var 0})

------------------------------------------------------------------------
-- ∗9·34   ⊢ : (x).φx .⊃: p .∨. (x).φx
------------------------------------------------------------------------

*9·34 : ⊢ (⟨ x ⟩ · φ x) ⊃ (p ∨ (⟨ x ⟩ · φ x))
*9·34 {φ} {p}
  rewrite *9·04 {p} {φ}
  =
  MP (*9·13 *1·3) *9·21

------------------------------------------------------------------------
-- ∗9·35   ⊢ : (∃x).φx .⊃: p .∨. (∃x).φx
------------------------------------------------------------------------

*9·35 : ⊢ (⟨ ∃ x ⟩ · φ x) ⊃ (p ∨ (⟨ ∃ x ⟩ · φ x))
*9·35 {φ} {p}
  rewrite *9·06 {p} {φ}
  =
  MP (*9·13 *1·3) *9·22

------------------------------------------------------------------------
-- ∗9·36   ⊢ :. p .∨. (x).φx :⊃: (x).φx .∨. p
------------------------------------------------------------------------

*9·36 : ⊢ (p ∨ (⟨ x ⟩ · φ x)) ⊃ ((⟨ x ⟩ · φ x) ∨ p)
*9·36 {p} {φ}
  rewrite *9·04 {p} {φ} | *9·03 {φ} {p}
  = MP (*9·13 *1·4) *9·21

------------------------------------------------------------------------
-- ∗9·361   ⊢ : (x).φx .∨. p :⊃: p .∨. (x).φx   (  *1·4 )
------------------------------------------------------------------------

*9·361 : ⊢ ((⟨ x ⟩ · φ x) ∨ p) ⊃ (p ∨ (⟨ x ⟩ · φ x))
*9·361 {φ} {p} = *1·4

------------------------------------------------------------------------
-- ∗9·37   ⊢ :. p .∨. (∃x).φx :⊃: (∃x).φx .∨. p   (  *1·4 )
------------------------------------------------------------------------

*9·37 : ⊢ (p ∨ (⟨ ∃ x ⟩ · φ x)) ⊃ ((⟨ ∃ x ⟩ · φ x) ∨ p)
*9·37 {p} {φ} = *1·4

------------------------------------------------------------------------
-- ∗9·371   ⊢ : (∃x).φx .∨. p :⊃: p .∨. (∃x).φx   (  *1·4 )
------------------------------------------------------------------------

*9·371 : ⊢ ((⟨ ∃ x ⟩ · φ x) ∨ p) ⊃ (p ∨ (⟨ ∃ x ⟩ · φ x))
*9·371 {φ} {p} = *1·4

------------------------------------------------------------------------
-- ∗9·4    ⊢ :: p :∨: q .∨. (x).φx :.⊃: q :∨: p .∨. (x).φx
--         [*1·5  +  *9·13  +  *9·21  ;  *9·04  expands  ∨  around  All ]
------------------------------------------------------------------------

*9·4 : ⊢ (p ∨ (q ∨ (⟨ x ⟩ · φ x))) ⊃ (q ∨ (p ∨ (⟨ x ⟩ · φ x)))
*9·4 {p} {q} {φ}
  rewrite
    *9·04 {q} {φ}
  | *9·04 {p} {λ x → q ∨ φ x}
  | *9·04 {p} {φ}
  | *9·04 {q} {λ x → p ∨ φ x}
  =
  MP (*9·13 *1·5)
    *9·21

------------------------------------------------------------------------
-- ∗9·401  (as above, with  ∃ )
------------------------------------------------------------------------

*9·401 : ⊢ (p ∨ (q ∨ (⟨ ∃ x ⟩ · φ x))) ⊃ (q ∨ (p ∨ (⟨ ∃ x ⟩ · φ x)))
*9·401 {p} {q} {φ}
  rewrite
    *9·06 {q} {φ}
  | *9·06 {p} {λ x → q ∨ φ x}
  | *9·06 {p} {φ}
  | *9·06 {q} {λ x → p ∨ φ x}
  =
  MP (*9·13 *1·5)
    *9·22

------------------------------------------------------------------------
-- ∗9·41   ⊢ :: p :∨: (x).φx .∨. r :.⊃:. (x).φx :∨: p ∨ r
------------------------------------------------------------------------

*9·41 : ⊢ (p ∨ ((⟨ x ⟩ · φ x) ∨ r)) ⊃ ((⟨ x ⟩ · φ x) ∨ (p ∨ r))
*9·41 {p} {φ} {r}
  rewrite
    *9·03 {φ} {r}
  | *9·04 {p} {λ x → φ x ∨ r}
  | *9·03 {φ} {p ∨ r}
  =
  MP (*9·13 *1·5)
    *9·21

------------------------------------------------------------------------
-- ∗9·411  (as above, with  ∃ )
------------------------------------------------------------------------

*9·411 : ⊢ (p ∨ ((⟨ ∃ x ⟩ · φ x) ∨ r)) ⊃ ((⟨ ∃ x ⟩ · φ x) ∨ (p ∨ r))
*9·411 {p} {φ} {r}
  rewrite
    *9·05 {φ} {r}
  | *9·06 {p} {λ x → φ x ∨ r}
  | *9·05 {φ} {p ∨ r}
  =
  MP (*9·13 *1·5)
    *9·22

------------------------------------------------------------------------
-- ∗9·42   ⊢ :: (x).φx :∨: q ∨ r :.⊃:. q :∨: (x).φx .∨. r
------------------------------------------------------------------------

*9·42 : ⊢ ((⟨ x ⟩ · φ x) ∨ (q ∨ r)) ⊃ (q ∨ ((⟨ x ⟩ · φ x) ∨ r))
*9·42 {φ} {q} {r}
  rewrite
    *9·03 {φ} {q ∨ r}
  | *9·03 {φ} {r}
  | *9·04 {q} {λ x → φ x ∨ r}
  =
  MP (*9·13 *1·5)
    *9·21

------------------------------------------------------------------------
-- ∗9·421  (as above, with  ∃ )
------------------------------------------------------------------------

*9·421 : ⊢ ((⟨ ∃ x ⟩ · φ x) ∨ (q ∨ r)) ⊃ (q ∨ ((⟨ ∃ x ⟩ · φ x) ∨ r))
*9·421 {φ} {q} {r}
  rewrite
    *9·05 {φ} {q ∨ r}
  | *9·05 {φ} {r}
  | *9·06 {q} {λ x → φ x ∨ r}
  =
  MP (*9·13 *1·5)
    *9·22

------------------------------------------------------------------------
-- ∗9·5 – ∗9·521  (PM Dem. through ∗9·08 / ∗9·01·03; each statement is an
-- instance of  Syll ∗2·37 ∗1·4  with the quantified matrix a single  Prop .)
------------------------------------------------------------------------

-- ∗9·5   ⊢ :: p ⊃ q .⊃: p .∨. (x).φx :⊃: q .∨. (x).φx

*9·5 : ⊢ (p ⊃ q) ⊃ ((p ∨ (⟨ x ⟩ · φ x)) ⊃ (q ∨ (⟨ x ⟩ · φ x)))
*9·5 =
  Syll *2·37
    (SumR *1·4)

-- ∗9·501   ⊢ :: p ⊃ q .⊃: p .∨. (∃x).φx :⊃: q .∨. (∃x).φx

*9·501 : ⊢ (p ⊃ q) ⊃ ((p ∨ (⟨ ∃ x ⟩ · φ x)) ⊃ (q ∨ (⟨ ∃ x ⟩ · φ x)))
*9·501 =
  Syll *2·37
    (SumR *1·4)

-- ∗9·51   ⊢ :: p .⊃. (x).φx :⊃:. p ∨ r .⊃: (x).φx .∨. r

*9·51 : ⊢ (p ⊃ (⟨ x ⟩ · φ x)) ⊃ ((p ∨ r) ⊃ ((⟨ x ⟩ · φ x) ∨ r))
*9·51 =
  Syll *2·37
    (SumR *1·4)

-- ∗9·511   [as above, with  ∃ ]

*9·511 : ⊢ (p ⊃ (⟨ ∃ x ⟩ · φ x)) ⊃ ((p ∨ r) ⊃ ((⟨ ∃ x ⟩ · φ x) ∨ r))
*9·511 =
  Syll *2·37
    (SumR *1·4)

-- ∗9·52   ⊢ :: (x).φx .⊃. q :⊃:. (x).φx .∨. r :⊃. q ∨ r

*9·52 : ⊢ ((⟨ x ⟩ · φ x) ⊃ q) ⊃ (((⟨ x ⟩ · φ x) ∨ r) ⊃ (q ∨ r))
*9·52 {φ} {q} {r} =
  Syll *2·37
    (SumR *1·4)

-- ∗9·521   [as above, with  ∃ ]

*9·521 : ⊢ ((⟨ ∃ x ⟩ · φ x) ⊃ q) ⊃ (((⟨ ∃ x ⟩ · φ x) ∨ r) ⊃ (q ∨ r))
*9·521 {φ} {q} {r} =
  Syll *2·37
    (SumR *1·4)

------------------------------------------------------------------------
-- ∗9.6 – ∗9.63   Existence of propositional functions from typing (∗9.131–15)
--
--  PM asserts metatheoretic “same type” facts. Here every closed proposition
--  is an inhabitant of  Prop ; first-order matrices are  Term → Prop  or
--  Term → Term → Prop .  The lemmas below are the Agda witnesses to PM’s
--  “there is a function …” after ∗9.14–15.
------------------------------------------------------------------------

-- ∗9.6   (x).φx , ~(x).φx , (∃x).φx , ~(∃x).φx are of the same type.
--
--  In this development all four are  Prop  (by  All / Ex / ~ on  Prop ).
--  No separate judgement is needed beyond Agda’s typing.

*9·6-all : ∀ {φ : Term → Prop} → Prop
*9·6-all {φ} = ⟨ x ⟩ · φ x

*9·6-not-all : ∀ {φ : Term → Prop} → Prop
*9·6-not-all {φ} = ~ (⟨ x ⟩ · φ x)

*9·6-ex : ∀ {φ : Term → Prop} → Prop
*9·6-ex {φ} = ⟨ ∃ x ⟩ · φ x

*9·6-not-ex : ∀ {φ : Term → Prop} → Prop
*9·6-not-ex {φ} = ~ (⟨ ∃ x ⟩ · φ x)

-- ∗9.61   If φx̂ , ψx̂ are elementary functions of the same type,
--         φx̂ ∨ ψx̂ exists.

*9·61 :
  (φ ψ : Term → Prop) → Term → Prop
*9·61 φ ψ x = φ x ∨ ψ x

-- ∗9.62   If φ(x̂,ŷ) and ψẑ are elementary and the x-slot of φ matches the
--         argument of ψ , there are (y).φ(x,y).∨.ψx and (∃y).φ(x,y).∨.ψx .

*9·62-All :
  (φ : Term → Term → Prop) (ψ : Term → Prop) → Term → Prop
*9·62-All φ ψ x = ⟨ y ⟩ · (φ x y ∨ ψ x)

*9·62-Ex :
  (φ : Term → Term → Prop) (ψ : Term → Prop) → Term → Prop
*9·62-Ex φ ψ x = ⟨ ∃ y ⟩ · (φ x y ∨ ψ x)

-- ∗9.63   If φ(x̂,ŷ) , ψ(x̂,ŷ) are elementary of the same type, there are
--         e.g. (y).φ(x,y).∨.(z).ψ(x,z) , and similarly for the other mixes
--         of ∀/∃ on the two matrices (PM: “etc.”).

-- *9·63-all-all :
--   (φ₂ ψ₂ : Term → Term → Prop) → Term → Prop
-- *9·63-all-all φ₂ ψ₂ x = (⟨ y ⟩ · φ₂ x y) ∨ (⟨ z ⟩ · ψ₂ x z)

-- *9·63-all-ex :
--   (φ₂ ψ₂ : Term → Term → Prop) → Term → Prop
-- *9·63-all-ex φ₂ ψ₂ x = (⟨ y ⟩ · φ₂ x y) ∨ (⟨ ∃ z ⟩ · ψ₂ x z)

-- *9·63-ex-all :
--   (φ₂ ψ₂ : Term → Term → Prop) → Term → Prop
-- *9·63-ex-all φ₂ ψ₂ x = (⟨ ∃ y ⟩ · φ₂ x y) ∨ (⟨ z ⟩ · ψ₂ x z)

-- *9·63-ex-ex :
--   (φ₂ ψ₂ : Term → Term → Prop) → Term → Prop
-- *9·63-ex-ex φ₂ ψ₂ x = (⟨ ∃ y ⟩ · φ₂ x y) ∨ (⟨ ∃ z ⟩ · ψ₂ x z)
