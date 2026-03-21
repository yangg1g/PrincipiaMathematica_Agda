# ∗4. Equivalence and Formal Rules

## Summary of ∗4

In this number, we shall be concerned with rules analogous, more or less, to those of ordinary algebra. When each of two propositions implies the other, we say that the two are equivalent, which we write "$p \equiv q$."

### Key propositions proved in this number:

- **∗4.1** $\vdash : p \supset q .\equiv. \sim q \supset \sim p$
- **∗4.11** $\vdash : p \equiv q .\equiv. \sim p \equiv \sim q$ — principle of transposition
- **∗4.13** $\vdash . p \equiv \sim(\sim p)$ — double negation
- **∗4.2** $\vdash . p \equiv p$ — equivalence is reflexive
- **∗4.21** $\vdash : p \equiv q .\equiv. q \equiv p$ — equivalence is symmetrical
- **∗4.22** $\vdash : p \equiv q . q \equiv r .\supset. p \equiv r$ — equivalence is transitive
- **∗4.24** $\vdash : p .\equiv. p . p$
- **∗4.25** $\vdash : p .\equiv. p \vee p$ — laws of tautology
- **∗4.3** $\vdash : p . q .\equiv. q . p$ — commutative law for product
- **∗4.31** $\vdash : p \vee q .\equiv. q \vee p$ — commutative law for sum
- **∗4.32** $\vdash : (p . q) . r .\equiv. p . (q . r)$ — associative law for product
- **∗4.33** $\vdash : (p \vee q) \vee r .\equiv. p \vee (q \vee r)$ — associative law for sum
- **∗4.4** $\vdash :. p . q \vee r .\equiv: p . q .\vee. p . r$ — distributive law (first form)
- **∗4.41** $\vdash :. p .\vee. q . r :\equiv. p \vee q . p \vee r$ — distributive law (second form)
- **∗4.71** $\vdash :. p \supset q .\equiv: p .\equiv. p . q$
- **∗4.73** $\vdash :. q .\supset: p .\equiv. p . q$

---

## Definitions

$$*4.01. \quad p \equiv q \;.\;=\;.\; p \supset q \;.\; q \supset p \qquad \text{Df}$$

$$*4.02. \quad p \equiv q \equiv r \;.\;=\;.\; p \equiv q \;.\; q \equiv r \qquad \text{Df}$$

---

## Proofs

### ∗4.1. $\vdash : p \supset q .\equiv. \sim q \supset \sim p$

$$[*2.16.*2.17]$$

---

### ∗4.11. $\vdash : p \equiv q .\equiv. \sim p \equiv \sim q$

$$[*2.16.*2.17.*3.47.*3.22]$$

---

### ∗4.12. $\vdash : p \equiv \sim q .\equiv. q \equiv \sim p$

$$[*2.03.*2.15]$$

---

### ∗4.13. $\vdash . p \equiv \sim(\sim p)$

The principle of double negation.

$$[*2.12.*2.14]$$

---

### ∗4.14. $\vdash :. p . q .\supset. r :\equiv: p . \sim r .\supset. \sim q$

$$[*3.37.*4.13]$$

---

### ∗4.15. $\vdash :. p . q .\supset. \sim r :\equiv: q . r .\supset. \sim p$

$$[*3.22.*4.13.*4.14]$$

---

### ∗4.2. $\vdash . p \equiv p$

$$[\text{Id}.*3.2]$$

---

### ∗4.21. $\vdash : p \equiv q .\equiv. q \equiv p$

$$[*3.22]$$

---

### ∗4.22. $\vdash : p \equiv q . q \equiv r .\supset. p \equiv r$

**Dem.**

$$\vdash . *3.26 .\supset \vdash : p \equiv q . q \equiv r .\supset. p \equiv q .$$

$$[*3.26] \quad \supset . p \supset q \tag{1}$$

$$\vdash . *3.27 .\supset \vdash : p \equiv q . q \equiv r .\supset. q \equiv r .$$

$$[*3.26] \quad \supset . q \supset r \tag{2}$$

$$\vdash .(1).(2).*2.83 .\supset \vdash : p \equiv q . q \equiv r .\supset. p \supset r \tag{3}$$

$$\vdash . *3.27 .\supset \vdash : p \equiv q . q \equiv r .\supset. q \equiv r .$$

$$[*3.27] \quad \supset . r \supset q \tag{4}$$

$$\vdash . *3.26 .\supset \vdash : p \equiv q . q \equiv r .\supset. p \equiv q .$$

$$[*3.27] \quad \supset . q \supset p \tag{5}$$

$$\vdash .(4).(5).*2.83 .\supset \vdash : p \equiv q . q \equiv r .\supset. r \supset p \tag{6}$$

$$\vdash .(3).(6).\text{Comp} .\supset \vdash . \text{Prop}$$

Equivalence is reflexive (∗4.2), symmetrical (∗4.21), and transitive (∗4.22).

---

### ∗4.24. $\vdash : p .\equiv. p . p$

**Dem.**

$$\vdash . *3.26 .\supset \vdash : p . p .\supset. p \tag{1}$$

$$\vdash . *3.2 .\supset \vdash : p .\supset: p .\supset. p . p :.$$

$$[*2.43] \quad \supset : p .\supset. p . p \tag{2}$$

$$\vdash .(1).(2).*3.2 .\supset \vdash . \text{Prop}$$

---

### ∗4.25. $\vdash : p .\equiv. p \vee p$

$$\left[\text{Taut}.\text{Add}\;\frac{p}{q}\right]$$

∗4.24.25 are two forms of the law of tautology, which is what chiefly distinguishes the algebra of symbolic logic from ordinary algebra.

---

### ∗4.3. $\vdash : p . q .\equiv. q . p$

$$[*3.22]$$

---

### ∗4.31. $\vdash : p \vee q .\equiv. q \vee p$

$$[\text{Perm}]$$

---

### ∗4.32. $\vdash : (p . q) . r .\equiv. p . (q . r)$

**Dem.**

$$\vdash . *4.15 .\supset \vdash : p . q .\supset. \sim r :\equiv: q . r .\supset. \sim p :$$

$$[*4.12] \qquad \equiv : p .\supset. \sim(q . r) \tag{1}$$

$$\vdash .(1). *4.11 .\supset \vdash : \sim(p . q .\supset. \sim r) .\equiv. \sim\{p .\supset. \sim(q . r)\} :$$

$$[(*1.01.*3.01)] \quad \supset . \text{Prop}$$

---

### ∗4.33. $\vdash : (p \vee q) \vee r .\equiv. p \vee (q \vee r)$

$$[*2.31.*2.32]$$

The above are the associative laws for multiplication and addition.

---

### ∗4.34. $p . q . r \;.\;=\;.\; (p . q) . r$ Df

---

### ∗4.36. $\vdash :. p \equiv q .\supset: p . r .\equiv. q . r$

$$[\text{Fact}.*3.47]$$

---

### ∗4.37. $\vdash :. p \equiv q .\supset: p \vee r .\equiv. q \vee r$

$$[\text{Sum}.*3.47]$$

---

### ∗4.38. $\vdash :. p \equiv r . q \equiv s .\supset: p . q .\equiv. r . s$

$$[*3.47.*4.32.*3.22]$$

---

### ∗4.39. $\vdash :. p \equiv r . q \equiv s .\supset: p \vee q .\equiv. r \vee s$

$$[*3.48.*3.47.*4.32.*3.22]$$

---

### ∗4.4. $\vdash :. p . q \vee r .\equiv: p . q .\vee. p . r$

The first form of the distributive law.

**Dem.**

$$\vdash . *3.2 .\supset \vdash :: p .\supset : q .\supset. p . q :. p .\supset : r .\supset. p . r ::$$

$$[\text{Comp}] \quad \supset :: p .\supset : q .\supset. p . q : r .\supset. p . r :.$$

$$[*3.48] \quad \supset : q \vee r .\supset: p . q .\vee. p . r \tag{1}$$

$$\vdash .(1).\text{Imp} .\supset \vdash :. p . q \vee r .\supset: p . q .\vee. p . r \tag{2}$$

$$\vdash . *3.26 .\supset \vdash :. p . q .\supset. p : p . r .\supset. p :.$$

$$[*3.44] \quad \supset \vdash :. p . q .\vee. p . r :\supset. p \tag{3}$$

$$\vdash . *3.27 .\supset \vdash :. p . q .\supset. q : p . r .\supset. r :.$$

$$[*3.48] \quad \supset \vdash :. p . q .\vee. p . r :\supset. q \vee r \tag{4}$$

$$\vdash .(3).(4).\text{Comp} .\supset \vdash : p . q .\vee. p . r :\supset. p . q \vee r \tag{5}$$

$$\vdash .(2).(5) .\supset \vdash . \text{Prop}$$

---

### ∗4.41. $\vdash :. p .\vee. q . r :\equiv. p \vee q . p \vee r$

The second form of the distributive law — a form to which there is nothing analogous in ordinary algebra.

**Dem.**

$$\vdash . *3.26.\text{Sum} .\supset \vdash :. p .\vee. q . r :\supset. p \vee q \tag{1}$$

$$\vdash . *3.27.\text{Sum} .\supset \vdash :. p .\vee. q . r :\supset. p \vee r \tag{2}$$

$$\vdash .(1).(2).\text{Comp} .\supset \vdash :. p .\vee. q . r :\supset. p \vee q . p \vee r \tag{3}$$

$$\vdash . *2.53.*3.47 .\supset \vdash : p \vee q . p \vee r .\supset: \sim p \supset q . \sim p \supset r :$$

$$[\text{Comp}] \quad \supset : \sim p .\supset. q . r :$$

$$[*2.54] \quad \supset : p .\vee. q . r \tag{4}$$

$$\vdash .(3).(4) .\supset \vdash . \text{Prop}$$

---

### ∗4.42. $\vdash :. p .\equiv: p . q .\vee. p . \sim q$

**Dem.**

$$\vdash . *3.21 .\supset \vdash :: q \vee \sim q .\supset: p .\supset. p . q \vee \sim q :.$$

$$[*2.11] \quad \supset \vdash : p .\supset. p . q \vee \sim q \tag{1}$$

$$\vdash . *3.26 .\supset \vdash : p . q \vee \sim q .\supset. p \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash :. p .\equiv: p . q \vee \sim q :$$

$$[*4.4] \qquad \equiv : p . q .\vee. p . \sim q ::\supset \vdash . \text{Prop}$$

---

### ∗4.43. $\vdash :. p .\equiv: p \vee q . p \vee \sim q$

**Dem.**

$$\vdash . *2.2 .\supset \vdash : p .\supset. p \vee q : p .\supset. p \vee \sim q :$$

$$[\text{Comp}] \quad \supset \vdash : p .\supset. p \vee q . p \vee \sim q \tag{1}$$

$$\vdash . *2.65\;\frac{\sim p}{p} .\supset \vdash :. \sim p \supset q .\supset: \sim p \supset \sim q .\supset. p :.$$

$$[\text{Imp}] \quad \supset \vdash : \sim p \supset q . \sim p \supset \sim q .\supset. p :$$

$$[*2.53.*3.47] \quad \supset \vdash : p \vee q . p \vee \sim q .\supset. p \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash . \text{Prop}$$

---

### ∗4.44. $\vdash :. p .\equiv: p .\vee. p . q$

**Dem.**

$$\vdash . *2.2 .\supset \vdash :. p .\supset: p .\vee. p . q \tag{1}$$

$$\vdash . \text{Id}.*3.26 .\supset \vdash :. p \supset p : p . q .\supset. p :.$$

$$[*3.44] \quad \supset \vdash :. p .\vee. p . q :\supset. p \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash . \text{Prop}$$

---

### ∗4.45. $\vdash : p .\equiv. p . p \vee q$

$$[*3.26.*2.2]$$

---

The following formulae are due to De Morgan. The first merely embodies our definition of the logical product.

### ∗4.5. $\vdash : p . q .\equiv. \sim(\sim p \vee \sim q)$

$$[*4.2.(*3.01)]$$

---

### ∗4.51. $\vdash : \sim(p . q) .\equiv. \sim p \vee \sim q$

$$[*4.5.*4.12]$$

---

### ∗4.52. $\vdash : p . \sim q .\equiv. \sim(\sim p \vee q)$

$$\left[*4.5\;\frac{\sim q}{q}.*4.13\right]$$

---

### ∗4.53. $\vdash : \sim(p . \sim q) .\equiv. \sim p \vee q$

$$[*4.52.*4.12]$$

---

### ∗4.54. $\vdash : \sim p . q .\equiv. \sim(p \vee \sim q)$

$$\left[*4.5\;\frac{\sim p}{p}.*4.13\right]$$

---

### ∗4.55. $\vdash : \sim(\sim p . q) .\equiv. p \vee \sim q$

$$[*4.54.*4.12]$$

---

### ∗4.56. $\vdash : \sim p . \sim q .\equiv. \sim(p \vee q)$

$$\left[*4.54\;\frac{\sim q}{q}.*4.13\right]$$

---

### ∗4.57. $\vdash : \sim(\sim p . \sim q) .\equiv. p \vee q$

$$[*4.56.*4.12]$$

---

The following formulae show how to transform implications into sums or into denials of products, and vice versa.

### ∗4.6. $\vdash : p \supset q .\equiv. \sim p \vee q$

$$[*4.2.(*1.01)]$$

---

### ∗4.61. $\vdash : \sim(p \supset q) .\equiv. p . \sim q$

$$[*4.6.*4.11.*4.52]$$

---

### ∗4.62. $\vdash : p \supset \sim q .\equiv. \sim p \vee \sim q$

$$\left[*4.6\;\frac{\sim q}{q}\right]$$

---

### ∗4.63. $\vdash : \sim(p \supset \sim q) .\equiv. p . q$

$$[*4.62.*4.11.*4.5]$$

---

### ∗4.64. $\vdash : \sim p \supset q .\equiv. p \vee q$

$$[*2.53.*2.54]$$

---

### ∗4.65. $\vdash : \sim(\sim p \supset q) .\equiv. \sim p . \sim q$

$$[*4.64.*4.11.*4.56]$$

---

### ∗4.66. $\vdash : \sim p \supset \sim q .\equiv. p \vee \sim q$

$$\left[*4.64\;\frac{\sim q}{q}\right]$$

---

### ∗4.67. $\vdash : \sim(\sim p \supset \sim q) .\equiv. \sim p . q$

$$[*4.66.*4.11.*4.54]$$

---

### ∗4.7. $\vdash : p \supset q .\equiv: p .\supset. p . q$

**Dem.**

$$\vdash . *3.27.\text{Syll} .\supset \vdash :. p .\supset. p . q :\supset. p \supset q \tag{1}$$

$$\vdash . \text{Comp} .\supset \vdash : p \supset p . p \supset q .\supset: p .\supset. p . q :.$$

$$[\text{Exp}] \quad \supset \vdash :: p \supset p .\supset: p \supset q .\supset: p .\supset. p . q ::$$

$$[\text{Id}] \quad \supset \vdash : p \supset q .\supset: p .\supset. p . q \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash . \text{Prop}$$

---

### ∗4.71. $\vdash :. p \supset q .\equiv: p .\equiv. p . q$

**Dem.**

$$\vdash . *3.21 .\supset \vdash :: p . q .\supset. p :\supset:. p .\supset. p . q :\supset: p .\equiv. p . q ::$$

$$[*3.26] \quad \supset \vdash :. p .\supset. p . q :\supset: p .\equiv. p . q \tag{1}$$

$$\vdash . *3.26 .\supset \vdash :. p .\equiv. p . q :\supset: p .\supset. p . q \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash :. p .\supset. p . q :\equiv: p .\equiv. p . q \tag{3}$$

$$\vdash .(3).*4.7.*4.22 .\supset \vdash . \text{Prop}$$

This proposition is constantly used. It enables us to transform every implication into an equivalence.

---

### ∗4.72. $\vdash :. p \supset q .\equiv: q .\equiv. p \vee q$

**Dem.**

$$\vdash . *4.1 .\supset \vdash : p \supset q .\equiv: \sim q \supset \sim p :$$

$$\left[*4.71\;\frac{\sim q,\;\sim p}{p,\;q}\right] \qquad \equiv : \sim q .\equiv. \sim q . \sim p :$$

$$[*4.12] \qquad \equiv : q .\equiv. \sim(\sim q . \sim p) :$$

$$[*4.57] \qquad \equiv : q .\equiv. q \vee p :$$

$$[*4.31] \qquad \equiv : q .\equiv. p \vee q :\supset \vdash . \text{Prop}$$

---

### ∗4.73. $\vdash :. q .\supset: p .\equiv. p . q$

$$[\text{Simp}.*4.71]$$

A true factor may be omitted from or added to a proposition without altering the truth-value of the proposition.

---

### ∗4.74. $\vdash :. \sim p .\supset: q .\equiv. p \vee q$

$$[*2.21.*4.72]$$

---

### ∗4.76. $\vdash : p \supset q . p \supset r .\equiv: p .\supset. q . r$

$$\left[*4.41\;\frac{\sim p}{p}.(*1.01)\right]$$

---

### ∗4.77. $\vdash : q \supset p . r \supset p .\equiv: q \vee r .\supset. p$

$$[*3.44.\text{Add}.*2.2]$$

---

### ∗4.78. $\vdash :. p \supset q .\vee. p \supset r :\equiv: p .\supset. q \vee r$

**Dem.**

$$\vdash . *4.2.(*1.01) .\supset \vdash : p \supset q .\vee. p \supset r :\equiv: \sim p \vee q .\vee. \sim p \vee r :$$

$$[*4.33] \qquad \equiv : \sim p .\vee. q \vee \sim p \vee r :$$

$$[*4.31.*4.37] \qquad \equiv : \sim p .\vee. \sim p \vee q \vee r :$$

$$[*4.33] \qquad \equiv : \sim p \vee \sim p .\vee. q \vee r :$$

$$[*4.25.*4.37] \qquad \equiv : \sim p .\vee. q \vee r :$$

$$[*4.2.(*1.01)] \qquad \equiv : p .\supset. q \vee r :\supset \vdash . \text{Prop}$$

---

### ∗4.79. $\vdash : q \supset p .\vee. r \supset p :\equiv: q . r .\supset. p$

**Dem.**

$$\vdash . *4.1.*4.39 .\supset \vdash : q \supset p .\vee. r \supset p :\equiv: \sim p \supset \sim q .\vee. \sim p \supset \sim r :$$

$$[*4.78] \qquad \equiv : \sim p .\supset. \sim q \vee \sim r :$$

$$[*2.15] \qquad \equiv : \sim(\sim q \vee \sim r) .\supset. p :$$

$$[*4.2.(*3.01)] \qquad \equiv : q . r .\supset. p :\supset \vdash . \text{Prop}$$

The analogues, for classes, of ∗4.78.79 are false.

---

### ∗4.8. $\vdash : p \supset \sim p .\equiv. \sim p$

$$[*2.01.\text{Simp}]$$

---

### ∗4.81. $\vdash : \sim p \supset p .\equiv. p$

$$[*2.18.\text{Simp}]$$

---

### ∗4.82. $\vdash : p \supset q . p \supset \sim q .\equiv. \sim p$

$$[*2.65.\text{Imp}.*2.21.\text{Comp}]$$

---

### ∗4.83. $\vdash : p \supset q . \sim p \supset q .\equiv. q$

$$[*2.61.\text{Imp}.\text{Simp}.\text{Comp}]$$

---

### ∗4.84. $\vdash : p \equiv q .\supset: p \supset r .\equiv. q \supset r$

$$[*2.06.*3.47]$$

---

### ∗4.85. $\vdash : p \equiv q .\supset: r \supset p .\equiv. r \supset q$

$$[*2.05.*3.47]$$

---

### ∗4.86. $\vdash :. p \equiv q .\supset: p \equiv r .\equiv. q \equiv r$

$$[*4.21.*4.22]$$

---

### ∗4.87. $\vdash : p . q .\supset. r :\equiv: p .\supset. q \supset r :\equiv: q .\supset. p \supset r :\equiv: q . p .\supset. r$

$$[\text{Exp}.\text{Comm}.\text{Imp}]$$

∗4.87 embodies in one proposition the principles of exportation, importation, and the commutative principle.
