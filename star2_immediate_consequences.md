# ∗2. Immediate Consequences of the Primitive Propositions

## Summary of ∗2

The proofs of the earlier propositions consist simply in noticing that they are instances of the general rules given in ∗1. When a general rule is adduced in early proofs, it is enclosed in brackets, with indications of substitutions. E.g. "Taut $\frac{\sim p}{p}$" means what "Taut" becomes when $\sim p$ is written in place of $p$.

When two different sets of symbols express the same proposition in virtue of a definition, say ∗1.01, and one of these (called (1)) has been asserted, the assertion of the other is made by writing "[(1).(∗1.01)]" before it.

### Key propositions proved in this number:

- **∗2.02** $\vdash : q .\supset. p \supset q$ — principle of simplification (Simp)
- **∗2.03** $\vdash : p \supset \sim q .\supset. q \supset \sim p$
- **∗2.15** $\vdash : \sim p \supset q .\supset. \sim q \supset p$
- **∗2.16** $\vdash : p \supset q .\supset. \sim q \supset \sim p$
- **∗2.17** $\vdash : \sim q \supset \sim p .\supset. p \supset q$

These four constitute the **principle of transposition** (Transp).

- **∗2.04** $\vdash :. p .\supset. q \supset r :\supset: q .\supset. p \supset r$ — commutative principle (Comm)
- **∗2.05** $\vdash : q \supset r .\supset: p \supset q .\supset. p \supset r$
- **∗2.06** $\vdash : p \supset q .\supset: q \supset r .\supset. p \supset r$

These two are the **principle of the syllogism** (Syll).

- **∗2.08** $\vdash . p \supset p$ — principle of identity (Id)
- **∗2.21** $\vdash : \sim p .\supset. p \supset q$ — a false proposition implies any proposition

---

## Proofs

### ∗2.01. $\vdash : p \supset \sim p .\supset. \sim p$

"If $p$ implies its own falsehood, then $p$ is false." — the **principle of the reductio ad absurdum** (Abs).

**Dem.**

$$\left[\text{Taut}\;\frac{\sim p}{p}\right] \quad \vdash : \sim p \vee \sim p .\supset. \sim p \tag{1}$$

$$[(1).(*1.01)] \quad \vdash : p \supset \sim p .\supset. \sim p$$

---

### ∗2.02. $\vdash : q .\supset. p \supset q$

**Dem.**

$$\left[\text{Add}\;\frac{\sim p}{p}\right] \quad \vdash : q .\supset. \sim p \vee q \tag{1}$$

$$[(1).(*1.01)] \quad \vdash : q .\supset. p \supset q$$

---

### ∗2.03. $\vdash : p \supset \sim q .\supset. q \supset \sim p$

**Dem.**

$$\left[\text{Perm}\;\frac{\sim p,\;\sim q}{p,\;q}\right] \quad \vdash : \sim p \vee \sim q .\supset. \sim q \vee \sim p \tag{1}$$

$$[(1).(*1.01)] \quad \vdash : p \supset \sim q .\supset. q \supset \sim p$$

---

### ∗2.04. $\vdash :. p .\supset. q \supset r :\supset: q .\supset. p \supset r$

**Dem.**

$$\left[\text{Assoc}\;\frac{\sim p,\;\sim q}{p,\;q}\right] \quad \vdash :. \sim p \vee (\sim q \vee r) .\supset. \sim q \vee (\sim p \vee r) \tag{1}$$

$$[(1).(*1.01)] \quad \vdash :. p .\supset. q \supset r :\supset: q .\supset. p \supset r$$

---

### ∗2.05. $\vdash : q \supset r .\supset: p \supset q .\supset. p \supset r$

**Dem.**

$$\left[\text{Sum}\;\frac{\sim p}{p}\right] \quad \vdash :. q \supset r .\supset: \sim p \vee q .\supset. \sim p \vee r \tag{1}$$

$$[(1).(*1.01)] \quad \vdash :. q \supset r .\supset: p \supset q .\supset. p \supset r$$

---

### ∗2.06. $\vdash : p \supset q .\supset: q \supset r .\supset. p \supset r$

**Dem.**

$$\left[\text{Comm}\;\frac{q \supset r,\;p \supset q,\;p \supset r}{p,\;q,\;r}\right] \quad \vdash :: q \supset r .\supset: p \supset q .\supset. p \supset r :\supset:. p \supset q .\supset: q \supset r .\supset. p \supset r \tag{1}$$

$$[*2.05] \quad \vdash :: q \supset r .\supset: p \supset q .\supset. p \supset r \tag{2}$$

$$[(1).(2).*1.11] \quad \vdash :. p \supset q .\supset: q \supset r .\supset. p \supset r$$

Both ∗2.05 and ∗2.06 are referred to as the **principle of the syllogism** (Syll), since the syllogism in Barbara is derived from them.

---

### ∗2.07. $\vdash : p .\supset. p \vee p$

$$\left[*1.3\;\frac{p}{q}\right]$$

---

### ∗2.08. $\vdash . p \supset p$

**Dem.**

$$\left[*2.05\;\frac{p \vee p,\;p}{q,\;r}\right] \quad \vdash :: p \vee p .\supset. p :\supset:. p .\supset. p \vee p :\supset. p \supset p \tag{1}$$

$$[\text{Taut}] \quad \vdash : p \vee p .\supset. p \tag{2}$$

$$[(1).(2).*1.11] \quad \vdash :. p .\supset. p \vee p :\supset. p \supset p \tag{3}$$

$$[*2.07] \quad \vdash : p .\supset. p \vee p \tag{4}$$

$$[(3).(4).*1.11] \quad \vdash . p \supset p$$

---

### ∗2.1. $\vdash . \sim p \vee p$

$$[*2.08.(*1.01)]$$

---

### ∗2.11. $\vdash . p \vee \sim p$

The **law of excluded middle**.

**Dem.**

$$\left[\text{Perm}\;\frac{\sim p,\;p}{p,\;q}\right] \quad \vdash : \sim p \vee p .\supset. p \vee \sim p \tag{1}$$

$$[(1).*2.1.*1.11] \quad \vdash . p \vee \sim p$$

---

### ∗2.12. $\vdash . p \supset \sim(\sim p)$

**Dem.**

$$\left[*2.11\;\frac{\sim p}{p}\right] \quad \vdash . \sim p \vee \sim(\sim p) \tag{1}$$

$$[(1).(*1.01)] \quad \vdash . p \supset \sim(\sim p)$$

---

### ∗2.13. $\vdash . p \vee \sim\{\sim(\sim p)\}$

Lemma for ∗2.14.

**Dem.**

$$\left[\text{Sum}\;\frac{\sim p,\;\sim\{\sim(\sim p)\}}{q,\;r}\right] \quad \vdash : \sim p .\supset. \sim\{\sim(\sim p)\} .\supset: p \vee \sim p .\supset. p \vee \sim\{\sim(\sim p)\} \tag{1}$$

$$\left[*2.12\;\frac{\sim p}{p}\right] \quad \vdash : \sim p .\supset. \sim\{\sim(\sim p)\} \tag{2}$$

$$[(1).(2).*1.11] \quad \vdash : p \vee \sim p .\supset. p \vee \sim\{\sim(\sim p)\} \tag{3}$$

$$[(3).*2.11.*1.11] \quad \vdash . p \vee \sim\{\sim(\sim p)\} \tag{4}$$

---

### ∗2.14. $\vdash . \sim(\sim p) \supset p$

**Dem.**

$$\left[\text{Perm}\;\frac{\sim\{\sim(\sim p)\}}{q}\right] \quad \vdash : p \vee \sim\{\sim(\sim p)\} .\supset. \sim\{\sim(\sim p)\} \vee p \tag{1}$$

$$[(1).*2.13.*1.11] \quad \vdash . \sim\{\sim(\sim p)\} \vee p \tag{2}$$

$$[(2).(*1.01)] \quad \vdash . \sim(\sim p) \supset p$$

---

### ∗2.15. $\vdash : \sim p \supset q .\supset. \sim q \supset p$

**Dem.**

$$\left[*2.05\;\frac{\sim p,\;\sim(\sim q)}{p,\;r}\right] \quad \vdash :. q \supset \sim(\sim q) .\supset: \sim p \supset q .\supset. \sim p \supset \sim(\sim q) \tag{1}$$

$$\left[*2.12\;\frac{q}{p}\right] \quad \vdash . q \supset \sim(\sim q) \tag{2}$$

$$[(1).(2).*1.11] \quad \vdash : \sim p \supset q .\supset. \sim p \supset \sim(\sim q) \tag{3}$$

$$\left[*2.03\;\frac{\sim p,\;\sim q}{p,\;q}\right] \quad \vdash : \sim p \supset \sim(\sim q) .\supset. \sim q \supset \sim(\sim p) \tag{4}$$

$$\left[*2.05\;\frac{\sim q,\;\sim(\sim p),\;p}{p,\;q,\;r}\right] \quad \vdash : \sim(\sim p) \supset p .\supset: \sim q \supset \sim(\sim p) .\supset. \sim q \supset p \tag{5}$$

$$[(5).*2.14.*1.11] \quad \vdash : \sim q \supset \sim(\sim p) .\supset. \sim q \supset p \tag{6}$$

$$\left[*2.05\;\frac{\sim p \supset q,\;\sim p \supset \sim(\sim q),\;\sim q \supset \sim(\sim p)}{p,\;q,\;r}\right] \quad \vdash :$$
$$\sim p \supset \sim(\sim q) .\supset. \sim q \supset \sim(\sim p) :\supset:$$
$$\sim p \supset q .\supset. \sim p \supset \sim(\sim q) :\supset: \sim p \supset q .\supset. \sim q \supset \sim(\sim p) \tag{7}$$

$$[(4).(7).*1.11] \quad \vdash :. \sim p \supset q .\supset. \sim p \supset \sim(\sim q) :\supset: \sim p \supset q .\supset. \sim q \supset \sim(\sim p) \tag{8}$$

$$[(3).(8).*1.11] \quad \vdash : \sim p \supset q .\supset. \sim q \supset \sim(\sim p) \tag{9}$$

$$\left[*2.05\;\frac{\sim p \supset q,\;\sim q \supset \sim(\sim p),\;\sim q \supset p}{p,\;q,\;r}\right] \quad \vdash :: \sim q \supset \sim(\sim p) .\supset. \sim q \supset p :$$
$$\supset: \sim p \supset q .\supset. \sim q \supset \sim(\sim p) :\supset: \sim p \supset q .\supset. \sim q \supset p \tag{10}$$

$$[(6).(10).*1.11] \quad \vdash :. \sim p \supset q .\supset. \sim q \supset \sim(\sim p) :\supset: \sim p \supset q .\supset. \sim q \supset p \tag{11}$$

$$[(9).(11).*1.11] \quad \vdash : \sim p \supset q .\supset. \sim q \supset p$$

**Note.** In the proof, (3), (4), (6) are respectively of the forms $p_1 \supset p_2$, $p_2 \supset p_3$, $p_3 \supset p_4$, where $p_1 \supset p_4$ is the proposition to be proved. This chain is abbreviated as:

$$[\text{Syll}] \quad \vdash .(a).(b).(c).\supset \vdash .(d)$$

---

### ∗2.16. $\vdash : p \supset q .\supset. \sim q \supset \sim p$

**Dem.**

$$[*2.12] \quad \vdash . q \supset \sim(\sim q) .\supset$$

$$[*2.05] \quad \vdash : p \supset q .\supset. p \supset \sim(\sim q) \tag{1}$$

$$\left[*2.03\;\frac{\sim q}{q}\right] \quad \vdash : p \supset \sim(\sim q) .\supset. \sim q \supset \sim p \tag{2}$$

$$[\text{Syll}] \quad \vdash .(1).(2).\supset \vdash : p \supset q .\supset. \sim q \supset \sim p$$

---

### ∗2.17. $\vdash : \sim q \supset \sim p .\supset. p \supset q$

**Dem.**

$$\left[*2.03\;\frac{\sim q,\;p}{p,\;q}\right] \quad \vdash : \sim q \supset \sim p .\supset. p \supset \sim(\sim q) \tag{1}$$

$$[*2.14] \quad \vdash : \sim(\sim q) \supset q :\supset$$

$$[*2.05] \quad \vdash : p \supset \sim(\sim q) .\supset. p \supset q \tag{2}$$

$$[\text{Syll}] \quad \vdash .(1).(2).\supset \vdash .\text{Prop}$$

∗2.15, ∗2.16 and ∗2.17 are all forms of the **principle of transposition** (Transp).

---

### ∗2.18. $\vdash : \sim p \supset p .\supset. p$

"A proposition which follows from the hypothesis of its own falsehood is true."

**Dem.**

$$[*2.12] \quad \vdash . p \supset \sim(\sim p) .\supset$$

$$[*2.05] \quad \vdash : \sim p \supset p .\supset. \sim p \supset \sim(\sim p) \tag{1}$$

$$\left[*2.01\;\frac{\sim p}{p}\right] \quad \vdash : \sim p \supset \sim(\sim p) .\supset. \sim(\sim p) \tag{2}$$

$$[\text{Syll}] \quad \vdash .(1).(2).\supset \vdash : \sim p \supset p .\supset. \sim(\sim p) \tag{3}$$

$$[*2.14] \quad \vdash . \sim(\sim p) \supset p \tag{4}$$

$$[\text{Syll}] \quad \vdash .(3).(4).\supset \vdash .\text{Prop}$$

---

### ∗2.2. $\vdash : p .\supset. p \vee q$

**Dem.**

$$\vdash .\text{Add}.\supset \vdash : p .\supset. q \vee p \tag{1}$$

$$[\text{Perm}] \quad \vdash : q \vee p .\supset. p \vee q \tag{2}$$

$$[\text{Syll}] \quad \vdash .(1).(2).\supset \vdash .\text{Prop}$$

---

### ∗2.21. $\vdash : \sim p .\supset. p \supset q$

$$\left[*2.2\;\frac{\sim p}{p}\right]$$

---

### ∗2.24. $\vdash : p .\supset. \sim p \supset q$

$$[*2.21.\text{Comm}]$$

---

### ∗2.25. $\vdash :. p :\vee: p \vee q .\supset. q$

**Dem.**

$$\vdash .*2.1.\supset \vdash : \sim(p \vee q) .\vee. (p \vee q) :$$

$$[\text{Assoc}] \quad \supset \vdash : p .\vee. \{\sim(p \vee q) .\vee. q\} :\supset \vdash .\text{Prop}$$

---

### ∗2.26. $\vdash : \sim p :\vee: p \supset q .\supset. q$

$$\left[*2.25\;\frac{\sim p}{p}\right]$$

---

### ∗2.27. $\vdash :. p .\supset: p \supset q .\supset. q$

$$[*2.26]$$

---

### ∗2.3. $\vdash : p \vee (q \vee r) .\supset. p \vee (r \vee q)$

**Dem.**

$$\left[\text{Perm}\;\frac{q,\;r}{p,\;q}\right] \quad \vdash : q \vee r .\supset. r \vee q :$$

$$\left[\text{Sum}\;\frac{q \vee r,\;r \vee q}{q,\;r}\right] \quad \supset \vdash : p \vee (q \vee r) .\supset. p \vee (r \vee q)$$

---

### ∗2.31. $\vdash : p \vee (q \vee r) .\supset. (p \vee q) \vee r$

**Dem.**

$$[*2.3] \quad \vdash : p \vee (q \vee r) .\supset. p \vee (r \vee q)$$

$$\left[\text{Assoc}\;\frac{r,\;q}{q,\;r}\right] \quad \supset . r \vee (p \vee q)$$

$$\left[\text{Perm}\;\frac{r,\;p \vee q}{p,\;q}\right] \quad \supset . (p \vee q) \vee r :\supset \vdash .\text{Prop}$$

---

### ∗2.32. $\vdash : (p \vee q) \vee r .\supset. p \vee (q \vee r)$

**Dem.**

$$\left[\text{Perm}\;\frac{p \vee q,\;r}{p,\;q}\right] \quad \vdash : (p \vee q) \vee r .\supset. r \vee (p \vee q)$$

$$\left[\text{Assoc}\;\frac{r,\;p,\;q}{p,\;q,\;r}\right] \quad \supset . p \vee (r \vee q)$$

$$[*2.3] \quad \supset . p \vee (q \vee r) :\supset \vdash .\text{Prop}$$

---

### ∗2.33. $p \vee q \vee r \;.\;=\;.\; (p \vee q) \vee r$ Df

---

### ∗2.36. $\vdash :. q \supset r .\supset: p \vee q .\supset. r \vee p$

**Dem.**

$$[\text{Perm}] \quad \vdash : p \vee r .\supset. r \vee p :$$

$$\left[\text{Syll}\;\frac{p \vee q,\;p \vee r,\;r \vee p}{p,\;q,\;r}\right] \quad \supset \vdash :. p \vee q .\supset. p \vee r :\supset: p \vee q .\supset. r \vee p \tag{1}$$

$$\vdash :. q \supset r .\supset: p \vee q .\supset. p \vee r \tag{2}$$

$$\vdash .(1).(2).\text{Syll}.\supset .\text{Prop}$$

---

### ∗2.37. $\vdash :. q \supset r .\supset: q \vee p .\supset. p \vee r$

$$[\text{Syll}.\text{Perm}.\text{Sum}]$$

---

### ∗2.38. $\vdash :. q \supset r .\supset: q \vee p .\supset. r \vee p$

$$[\text{Syll}.\text{Perm}.\text{Sum}]$$

---

### ∗2.4. $\vdash :. p .\vee. p \vee q :\supset. p \vee q$

**Dem.**

$$\vdash .*2.31.\supset \vdash : p .\vee. p \vee q :\supset: p \vee p .\vee. q :$$

$$[\text{Taut}.*2.38] \quad \supset : p \vee q :.\supset \vdash .\text{Prop}$$

---

### ∗2.41. $\vdash : q .\vee. p \vee q :\supset. p \vee q$

**Dem.**

$$\left[\text{Assoc}\;\frac{q,\;p,\;q}{p,\;q,\;r}\right] \quad \vdash :. q .\vee. p \vee q :\supset: p .\vee. q \vee q :$$

$$[\text{Taut}.\text{Sum}] \quad \supset : p \vee q :\supset .\text{Prop}$$

---

### ∗2.42. $\vdash :. \sim p .\vee. p \supset q :\supset. p \supset q$

$$\left[*2.4\;\frac{\sim p}{p}\right]$$

---

### ∗2.43. $\vdash :. p .\supset. p \supset q :\supset. p \supset q$

$$[*2.42]$$

---

### ∗2.45. $\vdash : \sim(p \vee q) .\supset. \sim p$

$$[*2.2.\text{Transp}]$$

---

### ∗2.46. $\vdash : \sim(p \vee q) .\supset. \sim q$

$$[*1.3.\text{Transp}]$$

---

### ∗2.47. $\vdash : \sim(p \vee q) .\supset. \sim p \vee q$

$$\left[*2.45.*2.2\;\frac{\sim p}{p}.\text{Syll}\right]$$

---

### ∗2.48. $\vdash : \sim(p \vee q) .\supset. p \vee \sim q$

$$\left[*2.46.*1.3\;\frac{\sim q}{q}.\text{Syll}\right]$$

---

### ∗2.49. $\vdash : \sim(p \vee q) .\supset. \sim p \vee \sim q$

$$\left[*2.45.*2.2\;\frac{\sim p,\;\sim q}{p,\;q}.\text{Syll}\right]$$

---

### ∗2.5. $\vdash : \sim(p \supset q) .\supset. \sim p \supset q$

$$\left[*2.47\;\frac{\sim p}{p}\right]$$

---

### ∗2.51. $\vdash : \sim(p \supset q) .\supset. p \supset \sim q$

$$\left[*2.48\;\frac{\sim p}{p}\right]$$

---

### ∗2.52. $\vdash : \sim(p \supset q) .\supset. \sim p \supset \sim q$

$$\left[*2.49\;\frac{\sim p}{p}\right]$$

---

### ∗2.521. $\vdash : \sim(p \supset q) .\supset. q \supset p$

$$[*2.52.*2.17]$$

---

### ∗2.53. $\vdash : p \vee q .\supset. \sim p \supset q$

**Dem.**

$$\vdash .*2.12.*2.38.\supset \vdash : p \vee q .\supset. \sim(\sim p) \vee q :\supset \vdash .\text{Prop}$$

---

### ∗2.54. $\vdash : \sim p \supset q .\supset. p \vee q$

$$[*2.14.*2.38]$$

---

### ∗2.55. $\vdash : \sim p .\supset: p \vee q .\supset. q$

$$[*2.53.\text{Comm}]$$

---

### ∗2.56. $\vdash : \sim q .\supset: p \vee q .\supset. p$

$$\left[*2.55\;\frac{q,\;p}{p,\;q}.\text{Perm}\right]$$

---

### ∗2.6. $\vdash : \sim p \supset q .\supset: p \supset q .\supset. q$

**Dem.**

$$[*2.38] \quad \vdash : \sim p \supset q .\supset: \sim p \vee q .\supset. q \vee q \tag{1}$$

$$[\text{Taut}.\text{Syll}] \quad \vdash : \sim p \vee q .\supset. q \vee q :\supset: \sim p \vee q .\supset. q \tag{2}$$

$$\vdash .(1).(2).\text{Syll}.\supset \vdash : \sim p \supset q .\supset: \sim p \vee q .\supset. q :.\supset \vdash .\text{Prop}$$

---

### ∗2.61. $\vdash :. p \supset q .\supset: \sim p \supset q .\supset. q$

$$[*2.6.\text{Comm}]$$

---

### ∗2.62. $\vdash : p \vee q .\supset: p \supset q .\supset. q$

$$[*2.53.*2.6.\text{Syll}]$$

---

### ∗2.621. $\vdash :. p \supset q .\supset: p \vee q .\supset. q$

$$[*2.62.\text{Comm}]$$

---

### ∗2.63. $\vdash : p \vee q .\supset: \sim p \vee q .\supset. q$

$$[*2.62]$$

---

### ∗2.64. $\vdash : p \vee q .\supset: p \vee \sim q .\supset. p$

$$\left[*2.63\;\frac{q,\;p}{p,\;q}.\text{Perm}\right]$$

---

### ∗2.65. $\vdash : p \supset q .\supset: p \supset \sim q .\supset. \sim p$

$$\left[*2.64\;\frac{\sim p}{p}\right]$$

---

### ∗2.67. $\vdash :. p \vee q .\supset. q :\supset. p \supset q$

**Dem.**

$$[*2.54.\text{Syll}] \quad \vdash :. p \vee q .\supset. q :\supset: \sim p \supset q .\supset. q \tag{1}$$

$$[*2.24.\text{Syll}] \quad \vdash :. \sim p \supset q .\supset. q :\supset. p \supset q \tag{2}$$

$$\vdash .(1).(2).\text{Syll}.\supset .\text{Prop}$$

---

### ∗2.68. $\vdash : p \supset q .\supset. q :\supset. p \vee q$

**Dem.**

$$\left[*2.67\;\frac{\sim p}{p}\right] \quad \vdash :. p \supset q .\supset. q :\supset. \sim p \supset q \tag{1}$$

$$\vdash .(1).*2.54.\supset \vdash .\text{Prop}$$

---

### ∗2.69. $\vdash : p \supset q .\supset. q :\supset: q \supset p .\supset. p$

$$\left[*2.68.\text{Perm}.*2.62\;\frac{q,\;p}{p,\;q}\right]$$

---

### ∗2.73. $\vdash :. p \supset q .\supset: p \vee q \vee r .\supset. q \vee r$

$$[*2.621.*2.38]$$

---

### ∗2.74. $\vdash : q \supset p .\supset: p \vee q \vee r .\supset. p \vee r$

$$\left[*2.73\;\frac{q,\;p}{p,\;q}.\text{Assoc}.\text{Syll}\right]$$

---

### ∗2.75. $\vdash :: p \vee q .\supset: p .\vee. q \supset r :\supset. p \vee r$

$$\left[*2.74\;\frac{\sim q}{q}.*2.53.*2.31\right]$$

---

### ∗2.76. $\vdash : p .\vee. q \supset r :\supset: p \vee q .\supset. p \vee r$

$$[*2.75.\text{Comm}]$$

---

### ∗2.77. $\vdash : p .\supset. q \supset r :\supset: p \supset q .\supset. p \supset r$

$$\left[*2.76\;\frac{\sim p}{p}\right]$$

---

### ∗2.8. $\vdash : q \vee r .\supset: \sim r \vee s .\supset. q \vee s$

**Dem.**

$$\vdash .*2.53.\text{Perm}.\supset \vdash :. q \vee r .\supset: \sim r \supset q :$$

$$[*2.38] \quad \supset : \sim r \vee s .\supset. q \vee s :.\supset \vdash .\text{Prop}$$

---

### ∗2.81. $\vdash :: q .\supset. r \supset s :\supset: p \vee q .\supset: p \vee r .\supset. p \vee s$

**Dem.**

$$\vdash .*2.76.\text{Syll}.\supset :: p \vee q .\supset: p .\vee. r \supset s :.\supset:.$$

$$p \vee q .\supset: p \vee r .\supset. p \vee s \tag{1}$$

$$\vdash .(1).(2).\supset \vdash .\text{Prop} \tag{2}$$

---

### ∗2.82. $\vdash : p \vee q \vee r .\supset: p \vee \sim r \vee s .\supset. p \vee q \vee s$

$$\left[*2.8.*2.81\;\frac{q \vee r,\;\sim r \vee s,\;q \vee s}{q,\;r,\;s}\right]$$

---

### ∗2.83. $\vdash :: p .\supset. q \supset r :\supset: p .\supset. r \supset s :\supset: p .\supset. q \supset s$

$$\left[*2.82\;\frac{\sim p,\;\sim q}{p,\;q}\right]$$

---

### ∗2.85. $\vdash :. p \vee q .\supset. p \vee r :\supset: p .\vee. q \supset r$

**Dem.**

$$[\text{Add}.\text{Syll}] \quad \vdash :. p \vee q .\supset. r :\supset. q \supset r \tag{1}$$

$$\vdash .*2.55.\supset :: \sim p .\supset: p \vee r .\supset. r :$$

$$[\text{Syll}] \quad \supset :. p \vee q .\supset. p \vee r :\supset: p \vee q .\supset. r :.$$

$$[(1).*2.83] \quad \supset : p \vee q .\supset. p \vee r :\supset: q \supset r \tag{2}$$

$$\vdash .(2).\text{Comm}.\supset \vdash :. p \vee q .\supset. p \vee r :\supset: \sim p .\supset. q \supset r :$$

$$[*2.54] \quad \supset : p .\vee. q \supset r :.\supset \vdash .\text{Prop}$$

---

### ∗2.86. $\vdash : p \supset q .\supset. p \supset r :\supset: p .\supset. q \supset r$

$$\left[*2.85\;\frac{\sim p}{p}\right]$$
