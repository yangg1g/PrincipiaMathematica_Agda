# ∗3. The Logical Product of Two Propositions

## Summary of ∗3

The logical product of two propositions $p$ and $q$ is practically the proposition "$p$ and $q$ are both true." We take as the logical product the proposition $\sim(\sim p \vee \sim q)$, i.e. "it is false that either $p$ is false or $q$ is false," which is obviously true when and only when $p$ and $q$ are both true.

### Key propositions proved in this number:

- **∗3.2** $\vdash :. p .\supset: q .\supset. p . q$ — if each of two propositions is true, so is their logical product
- **∗3.26** $\vdash : p . q .\supset. p$
- **∗3.27** $\vdash : p . q .\supset. q$ — principle of simplification (Simp)
- **∗3.3** $\vdash :. p . q .\supset. r :\supset: p .\supset. q \supset r$ — exportation (Exp)
- **∗3.31** $\vdash :. p .\supset. q \supset r :\supset: p . q .\supset. r$ — importation (Imp)
- **∗3.35** $\vdash : p . p \supset q .\supset. q$ — principle of assertion (Ass)
- **∗3.43** $\vdash :. p \supset q . p \supset r .\supset: p .\supset. q . r$ — principle of composition (Comp)
- **∗3.45** $\vdash :. p \supset q .\supset: p . r .\supset. q . r$ — principle of the factor (Fact)
- **∗3.47** $\vdash :. p \supset r . q \supset s .\supset: p . q .\supset. r . s$ — praeclarum theorema

---

## Definitions

$$*3.01. \quad p . q \;.\;=\;.\; \sim(\sim p \vee \sim q) \qquad \text{Df}$$

$$*3.02. \quad p \supset q \supset r \;.\;=\;.\; p \supset q \;.\; q \supset r \qquad \text{Df}$$

---

## Proofs

### ∗3.03. Given two asserted elementary propositional functions "$\vdash . \phi p$" and "$\vdash . \psi p$" whose arguments are elementary propositions, we have $\vdash . \phi p . \psi p$.

**Dem.**

$$\vdash . *1.7 . *1.72 . *2.11 .\supset \vdash : \sim\phi p \vee \sim\psi p .\vee. \sim(\sim\phi p \vee \sim\psi p) \tag{1}$$

$$\vdash .(1). *2.32 .(*1.01) .\supset \vdash :. \phi p .\supset: \psi p .\supset. \sim(\sim\phi p \vee \sim\psi p) \tag{2}$$

$$\vdash .(2).(*3.01) .\supset \vdash : \phi p .\supset: \psi p .\supset. \phi p . \psi p \tag{3}$$

$$\vdash .(3). *1.11 .\supset . \text{Prop}$$

---

### ∗3.1. $\vdash : p . q .\supset. \sim(\sim p \vee \sim q)$

$$[\text{Id}.(*3.01)]$$

---

### ∗3.11. $\vdash : \sim(\sim p \vee \sim q) .\supset. p . q$

$$[\text{Id}.(*3.01)]$$

---

### ∗3.12. $\vdash : \sim p .\vee. \sim q .\vee. p . q$

$$\left[*2.11\;\frac{\sim p \vee \sim q}{p}\right]$$

---

### ∗3.13. $\vdash : \sim(p . q) .\supset. \sim p \vee \sim q$

$$[*3.11.\text{Transp}]$$

---

### ∗3.14. $\vdash : \sim p \vee \sim q .\supset. \sim(p . q)$

$$[*3.1.\text{Transp}]$$

---

### ∗3.2. $\vdash :. p .\supset: q .\supset. p . q$

$$[*3.12]$$

---

### ∗3.21. $\vdash : q .\supset: p .\supset. p . q$

$$[*3.2.\text{Comm}]$$

---

### ∗3.22. $\vdash : p . q .\supset. q . p$

One form of the commutative law for logical multiplication.

**Dem.**

$$\left[*3.13\;\frac{q,\;p}{p,\;q}\right] \quad \vdash : \sim(q . p) .\supset. \sim q \vee \sim p .\supset. \sim p \vee \sim q .$$

$$[\text{Perm}] \qquad\qquad\qquad\qquad \supset. \sim(p . q) \tag{1}$$

$$[*3.14]$$

$$\vdash .(1).\text{Transp} .\supset \vdash . \text{Prop}$$

---

### ∗3.24. $\vdash . \sim(p . \sim p)$

The **law of contradiction**.

**Dem.**

$$\left[*2.11\;\frac{\sim p}{p}\right] \quad \vdash . \sim p \vee \sim(\sim p) .\supset$$

$$\left[*3.14\;\frac{\sim p}{q}\right] \quad \vdash . \sim(p . \sim p)$$

---

### ∗3.26. $\vdash : p . q .\supset. p$

**Dem.**

$$\left[*2.02\;\frac{q,\;p}{p,\;q}\right] \quad \vdash : p .\supset. q \supset p \tag{1}$$

$$[(1).(*1.01)] \quad \vdash : \sim p .\vee. \sim q \vee p : $$

$$[*2.31] \quad \supset \vdash : \sim p \vee \sim q .\vee. p : $$

$$\left[*2.53\;\frac{\sim p \vee \sim q,\;p}{p,\;q}\right] \quad \supset \vdash : \sim(\sim p \vee \sim q) .\supset. p \tag{2}$$

$$[(2).(*3.01)] \quad \vdash : p . q .\supset. p$$

---

### ∗3.27. $\vdash : p . q .\supset. q$

**Dem.**

$$[*3.22] \quad \vdash : p . q .\supset. q . p .$$

$$\left[*3.26\;\frac{q,\;p}{p,\;q}\right] \quad \supset . q :\supset \vdash . \text{Prop}$$

∗3.26.27 will both be called the "principle of simplification" (Simp).

---

### ∗3.3. $\vdash :. p . q .\supset. r :\supset: p .\supset. q \supset r$

**Dem.**

$$[\text{Id}.(*3.01)] \quad \vdash : p . q .\supset. r :\supset: \sim(\sim p \vee \sim q) .\supset. r :$$

$$[\text{Transp}] \qquad \supset : \sim r .\supset. \sim p \vee \sim q :$$

$$[\text{Id}.(*1.01)] \qquad \supset : \sim r .\supset. p \supset \sim q :$$

$$[\text{Comm}] \qquad \supset : p .\supset. \sim r \supset \sim q :$$

$$[\text{Transp}.\text{Syll}] \qquad \supset : p .\supset. q \supset r :\supset \vdash . \text{Prop}$$

This principle (following Peano) will be called "exportation" (Exp).

---

### ∗3.31. $\vdash :. p .\supset. q \supset r :\supset: p . q .\supset. r$

This is the correlative of the above, and will be called (following Peano) "importation" (Imp).

**Dem.**

$$[\text{Id}.(*1.01)] \quad \vdash : p .\supset. q \supset r :\supset: \sim p .\vee. \sim q \vee r :$$

$$[*2.31] \qquad \supset : \sim p \vee \sim q .\vee. r :$$

$$\left[*2.53\;\frac{\sim p \vee \sim q,\;r}{p,\;q}\right] \qquad \supset : \sim(\sim p \vee \sim q) .\supset. r :$$

$$[\text{Id}.(*3.01)] \qquad \supset : p . q .\supset. r :\supset \vdash . \text{Prop}$$

---

### ∗3.33. $\vdash : p \supset q . q \supset r .\supset. p \supset r$

$$[\text{Syll}.\text{Imp}]$$

---

### ∗3.34. $\vdash : q \supset r . p \supset q .\supset. p \supset r$

$$[\text{Syll}.\text{Imp}]$$

These two propositions will hereafter be referred to as "Syll"; they are usually more convenient than either ∗2.05 or ∗2.06.

---

### ∗3.35. $\vdash : p . p \supset q .\supset. q$

$$[*2.27.\text{Imp}]$$

---

### ∗3.37. $\vdash :. p . q .\supset. r :\supset: p . \sim r .\supset. \sim q$

Another form of transposition.

**Dem.**

$$\vdash . \text{Transp} .\supset \vdash : q \supset r .\supset. \sim r \supset \sim q :$$

$$[\text{Syll}] \quad \supset \vdash :. p .\supset. q \supset r :\supset: p .\supset. \sim r \supset \sim q \tag{1}$$

$$\vdash . \text{Exp} .\supset \vdash :. p . q .\supset. r :\supset: p .\supset. q \supset r \tag{2}$$

$$\vdash . \text{Imp} .\supset \vdash : p .\supset. \sim r \supset \sim q :\supset: p . \sim r .\supset. \sim q \tag{3}$$

$$\vdash .(2).(1).(3).\text{Syll} .\supset \vdash . \text{Prop}$$

---

### ∗3.4. $\vdash : p . q .\supset. p \supset q$

$$[*2.51.\text{Transp}.(*1.01.*3.01)]$$

---

### ∗3.41. $\vdash :. p \supset r .\supset: p . q .\supset. r$

$$[*3.26.\text{Syll}]$$

---

### ∗3.42. $\vdash :. q \supset r .\supset: p . q .\supset. r$

$$[*3.27.\text{Syll}]$$

---

### ∗3.43. $\vdash :. p \supset q . p \supset r .\supset: p .\supset. q . r$

The "principle of composition" (Comp).

**Dem.**

$$\vdash . *3.2 .\supset \vdash : q .\supset: r .\supset. q . r \tag{1}$$

$$\vdash .(1).\text{Syll} .\supset \vdash :: p \supset q .\supset: p .\supset: r .\supset. q . r :.$$

$$[*2.77] \qquad \supset : p \supset r .\supset: p .\supset. q . r \tag{2}$$

$$\vdash .(2).\text{Imp} .\supset \vdash . \text{Prop}$$

---

### ∗3.44. $\vdash : q \supset p . r \supset p .\supset: q \vee r .\supset. p$

This principle is analogous to ∗3.43.

**Dem.**

$$\vdash . \text{Syll} .\supset \vdash : \sim q \supset r . r \supset p .\supset: \sim q \supset p :$$

$$[*2.6] \quad \supset : q \supset p .\supset. p \tag{1}$$

$$\vdash .(1).\text{Exp} .\supset \vdash :: \sim q \supset r .\supset: r \supset p .\supset: q \supset p .\supset. p :.$$

$$[\text{Comm}.\text{Imp}] \quad \supset : q \supset p . r \supset p .\supset. p \tag{2}$$

$$\vdash .(2).\text{Comm} .\supset \vdash :: q \supset p . r \supset p .\supset: \sim q \supset r .\supset. p :.$$

$$[*2.53.\text{Syll}] \quad \supset \vdash . \text{Prop}$$

---

### ∗3.45. $\vdash :. p \supset q .\supset: p . r .\supset. q . r$

The "principle of the factor" (Fact). The analogue, for multiplication, of the primitive proposition ∗1.6.

**Dem.**

$$\vdash . \text{Syll}\;\frac{\sim r}{r} .\supset \vdash :. p \supset q .\supset: q \supset \sim r .\supset. p \supset \sim r :$$

$$\supset : [\text{Transp}] \quad \sim(p \supset \sim r) .\supset. \sim(q \supset \sim r) :$$

$$[\text{Id}.(*1.01.*3.01)] \quad \supset \vdash . \text{Prop}$$

---

### ∗3.47. $\vdash :. p \supset r . q \supset s .\supset: p . q .\supset. r . s$

This proposition, or rather its analogue for classes, was proved by Leibniz, and evidently pleased him, since he calls it "praeclarum theorema."

**Dem.**

$$\vdash . *3.26 .\supset \vdash :. p \supset r . q \supset s .\supset: p \supset r :$$

$$[\text{Fact}] \quad \supset : p . q .\supset. r . q :$$

$$[*3.22] \quad \supset : p . q .\supset. q . r \tag{1}$$

$$\vdash . *3.27 .\supset \vdash :: p \supset r . q \supset s .\supset: q \supset s :$$

$$[\text{Fact}] \quad \supset : q . r .\supset. s . r :$$

$$[*3.22] \quad \supset : q . r .\supset. r . s \tag{2}$$

$$\vdash .(1).(2).*3.03.*2.83 .$$

$$\vdash : p \supset r . q \supset s .\supset: p . q .\supset. r . s :\supset \vdash . \text{Prop}$$

---

### ∗3.48. $\vdash :. p \supset r . q \supset s .\supset: p \vee q .\supset. r \vee s$

The analogue of ∗3.47.

**Dem.**

$$\vdash . *3.26 .\supset \vdash : p \supset r . q \supset s .\supset: p \supset r :$$

$$[\text{Sum}] \quad \supset : p \vee q .\supset. r \vee q :$$

$$[\text{Perm}] \quad \supset : p \vee q .\supset. q \vee r \tag{1}$$

$$\vdash . *3.27 .\supset \vdash : p \supset r . q \supset s .\supset: q \supset s :$$

$$[\text{Sum}] \quad \supset : q \vee r .\supset. s \vee r :$$

$$[\text{Perm}] \quad \supset : q \vee r .\supset. r \vee s \tag{2}$$

$$\vdash .(1).(2).*2.83 .\supset$$

$$\vdash :. p \supset r . q \supset s .\supset: p \vee q .\supset. r \vee s :\supset \vdash . \text{Prop}$$
