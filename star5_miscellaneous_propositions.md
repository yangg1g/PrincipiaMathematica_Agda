# ∗5. Miscellaneous Propositions

## Summary of ∗5

The present number consists chiefly of propositions of two sorts: (1) those which will be required as lemmas in one or more subsequent proofs, (2) those which are on their own account illustrative, or would be important in other developments than those that we wish to make.

### Key propositions proved in this number:

- **∗5.1** $\vdash : p . q .\supset. p \equiv q$ — two propositions are equivalent if they are both true
- **∗5.32** $\vdash : p .\supset. q \equiv r :\equiv: p . q .\equiv. p . r$ — on the hypothesis $p$, $q$ and $r$ are equivalent iff $p . q \equiv p . r$
- **∗5.6** $\vdash :. p . \sim q .\supset. r :\equiv: p .\supset. q \vee r$ — "$p$ and not-$q$ imply $r$" is equivalent to "$p$ implies $q$ or $r$"

---

## Proofs

### ∗5.1. $\vdash : p . q .\supset. p \equiv q$

$$[*3.4.*3.22]$$

---

### ∗5.11. $\vdash : p \supset q .\vee. \sim p \supset q$

$$[*2.5.*2.54]$$

---

### ∗5.12. $\vdash : p \supset q .\vee. p \supset \sim q$

$$[*2.51.*2.54]$$

---

### ∗5.13. $\vdash : p \supset q .\vee. q \supset p$

$$[*2.521]$$

---

### ∗5.14. $\vdash : p \supset q .\vee. q \supset r$

$$[\text{Simp}.\text{Transp}.*2.21]$$

---

### ∗5.15. $\vdash : p \equiv q .\vee. p \equiv \sim q$

**Dem.**

$$\vdash . *4.61 .\supset \vdash : \sim(p \supset q) .\supset. p . \sim q .$$

$$[*5.1] \quad \supset . p \equiv \sim q :$$

$$[*2.54] \quad \supset \vdash : p \supset q .\vee. p \equiv \sim q \tag{1}$$

$$\vdash . *4.61 .\supset \vdash : \sim(q \supset p) .\supset. q . \sim p .$$

$$[*5.1] \quad \supset . q \equiv \sim p .$$

$$[*4.12] \quad \supset . p \equiv \sim q :$$

$$[*2.54] \quad \supset \vdash : q \supset p .\vee. p \equiv \sim q \tag{2}$$

$$\vdash .(1).(2).*4.41 .\supset . \text{Prop}$$

---

### ∗5.16. $\vdash . \sim(p \equiv q . p \equiv \sim q)$

**Dem.**

$$\vdash . *3.26 .\supset \vdash : p \equiv q . p \supset \sim q .\supset. p \supset q . p \supset \sim q .$$

$$[*4.82] \quad \supset . \sim p \tag{1}$$

$$\vdash . *3.27 .\supset \vdash : p \equiv q . p \supset \sim q .\supset. q \supset p . p \supset \sim q .$$

$$[\text{Syll}] \quad \supset . q \supset \sim q .$$

$$[\text{Abs}] \quad \supset . \sim q \tag{2}$$

$$\vdash .(1).(2).\text{Comp} .\supset \vdash : p \equiv q . p \supset \sim q .\supset. \sim p . \sim q .$$

$$\left[*4.65\;\frac{q,\;p}{p,\;q}\right] \quad \supset . \sim(\sim q \supset p) \tag{3}$$

$$\vdash .(3).\text{Exp} .\supset \vdash : p \equiv q .\supset: p \supset \sim q .\supset. \sim(\sim q \supset p) :$$

$$[\text{Id}.(*1.01)] \quad \supset : \sim(p \supset \sim q) .\vee. \sim(\sim q \supset p) :$$

$$[*4.51.(*4.01)] \quad \supset : \sim(p \equiv \sim q) :\supset \vdash . \text{Prop}$$

---

### ∗5.17. $\vdash : p \vee q . \sim(p . q) .\equiv. p \equiv \sim q$

**Dem.**

$$\vdash . *4.64.*4.21 .\supset \vdash : p \vee q .\equiv. \sim q \supset p \tag{1}$$

$$\vdash . *4.63.\text{Transp} .\supset \vdash : \sim(p . q) .\equiv. p \supset \sim q \tag{2}$$

$$\vdash .(1).(2).*4.38.*4.21 .\supset \vdash . \text{Prop}$$

---

### ∗5.18. $\vdash : p \equiv q .\equiv. \sim(p \equiv \sim q)$

$$\left[*5.15.*5.16.*5.17\;\frac{p \equiv q,\;p \equiv \sim q}{p,\;q}\right]$$

---

### ∗5.19. $\vdash : p \equiv p$

$$\left[*5.18\;\frac{p}{q}.*4.2\right]$$

---

### ∗5.21. $\vdash : \sim p . \sim q .\supset. p \equiv q$

$$[*5.1.*4.11]$$

---

### ∗5.22. $\vdash : \sim(p \equiv q) .\equiv: p . \sim q .\vee. q . \sim p$

$$[*4.61.*4.51.*4.39]$$

---

### ∗5.23. $\vdash :. p \equiv q .\equiv: p . q .\vee. \sim p . \sim q$

$$\left[*5.18.*5.22\;\frac{\sim q}{q}.*4.13.*4.36\right]$$

---

### ∗5.24. $\vdash :. \sim(p . q .\vee. \sim p . \sim q) .\equiv: p . \sim q .\vee. q . \sim p$

$$[*5.22.*5.23]$$

---

### ∗5.25. $\vdash :. p \vee q .\equiv: p \supset q .\supset. q$

$$[*2.62.*2.68]$$

From ∗5.25 it appears that we might have taken implication, instead of disjunction, as a primitive idea, and have defined "$p \vee q$" as meaning "$p \supset q .\supset. q$."

---

### ∗5.3. $\vdash :. p . q .\supset. r :\equiv: p . q .\supset. p . r$

$$[\text{Simp}.\text{Comp}.\text{Syll}]$$

---

### ∗5.31. $\vdash :. r . p \supset q :\supset: p .\supset. q . r$

$$[\text{Simp}.\text{Comp}]$$

---

### ∗5.32. $\vdash : p .\supset. q \equiv r :\equiv: p . q .\equiv. p . r$

$$[*4.76.*3.33.*3.31.*5.3]$$

This proposition is constantly required in subsequent proofs.

---

### ∗5.33. $\vdash :. p . q .\supset. r :\equiv: p : p . q .\supset. r$

$$[*4.73.*4.84.*5.32]$$

---

### ∗5.35. $\vdash : p \supset q . p \supset r .\supset: p .\supset. q \equiv r$

$$[\text{Comp}.*5.1]$$

---

### ∗5.36. $\vdash : p . p \equiv q .\equiv. q . p \equiv q$

$$[\text{Ass}.*4.38]$$

---

### ∗5.4. $\vdash :. p .\supset. p \supset q :\equiv. p \supset q$

$$[\text{Simp}.*2.43]$$

---

### ∗5.41. $\vdash :. p \supset q .\supset. p \supset r :\equiv: p .\supset. q \supset r$

$$[*2.77.*2.86]$$

---

### ∗5.42. $\vdash :: p .\supset. q \supset r :\equiv: p .\supset: q .\supset. p . r$

$$[*5.3.*4.87]$$

---

### ∗5.44. $\vdash :: p \supset q .\supset: p \supset r .\equiv: p .\supset. q . r$

$$[*4.76.*5.32]$$

---

### ∗5.5. $\vdash : p .\supset: p \supset q .\equiv. q$

$$[\text{Ass}.\text{Exp}.\text{Simp}]$$

---

### ∗5.501. $\vdash : p .\supset: q .\equiv. p \equiv q$

$$[*5.1.\text{Exp}.\text{Ass}]$$

---

### ∗5.53. $\vdash : p \vee q \vee r .\supset. s :\equiv: p \supset s . q \supset s . r \supset s$

$$[*4.77]$$

---

### ∗5.54. $\vdash :. p . q .\equiv. p :\vee: p . q .\equiv. q$

$$[*4.73.*4.44.\text{Transp}.*5.1]$$

---

### ∗5.55. $\vdash :. p \vee q .\equiv. p :\vee: p \vee q .\equiv. q$

$$[*4.45.*5.1.*4.21.*4.74.*2.11.*3.44]$$

(Agda: `*5·55` — from `*4·45` / `*5·1` / `*4·21` for $p \supset (p \vee q \equiv p)$, `*4·74` for $\sim p \supset (p \vee q \equiv q)$, then `*2·11` and `*3·44`.)

---

### ∗5.6. $\vdash :. p . \sim q .\supset. r :\equiv: p .\supset. q \vee r$

$$\left[*4.87\;\frac{\sim q}{q}.*4.64.*4.85\right]$$

---

### ∗5.61. $\vdash : p \vee q . \sim q .\equiv. p . \sim q$

$$[*4.74.*5.32]$$

---

### ∗5.62. $\vdash :. p . q .\vee. \sim q :\equiv. p \vee \sim q$

$$\left[*4.7\;\frac{q,\;p}{p,\;q}\right]$$

---

### ∗5.63. $\vdash :. p \vee q .\equiv: p .\vee. \sim p . q$

$$\left[*5.62\;\frac{\sim p,\;q}{q,\;p}\right]$$

---

### ∗5.7. $\vdash : p \vee r .\equiv. q \vee r :\equiv: r .\vee. p \equiv q$

$$[*4.74.*1.3.*5.1.*4.37]$$

---

### ∗5.71. $\vdash :. q \supset \sim r .\supset: p \vee q . r .\equiv. p . r$

In the following proof, as always henceforth, "Hp" means the hypothesis of the proposition to be proved.

**Dem.**

$$\vdash . *4.4 .\supset \vdash : p \vee q . r .\equiv: p . r .\vee. q . r \tag{1}$$

$$\vdash . *4.62.*4.51 .\supset \vdash :: \text{Hp} .\supset:. \sim(q . r) :$$

$$[*4.74] \quad \supset : p . r .\vee. q . r :\equiv: p . r \tag{2}$$

$$\vdash .(1).(2).*4.22 .\supset \vdash . \text{Prop}$$

---

### ∗5.74. $\vdash : p .\supset. q \equiv r :\equiv: p \supset q .\equiv. p \supset r$

**Dem.**

$$\vdash . *5.41 .\supset \vdash :. p \supset q .\supset. p \supset r :\equiv: p .\supset. q \supset r$$

$$p \supset r .\supset. p \supset q :\equiv: p .\supset. r \supset q \tag{1}$$

$$\vdash .(1).*4.38 .\supset \vdash :: p \supset q .\equiv. p \supset r :\equiv:. p .\supset. q \supset r : p .\supset. r \supset q :.$$

$$[*4.76] \qquad \equiv : p .\supset. q \equiv r ::\supset \vdash . \text{Prop}$$

---

### ∗5.75. $\vdash :. r \supset \sim q : p :\equiv. q \vee r :\supset: p . \sim q .\equiv. r$

**Dem.**

$$\vdash . *5.6 .\supset \vdash : \text{Hp} .\supset: p . \sim q .\supset. r \tag{1}$$

$$\vdash . *3.27 .\supset \vdash : \text{Hp} .\supset: q \vee r .\supset. p :$$

$$[*4.77] \quad \supset : r \supset p \tag{2}$$

$$\vdash . *3.26 .\supset \vdash : \text{Hp} .\supset: r \supset \sim q \tag{3}$$

$$\vdash .(2).(3).\text{Comp} .\supset \vdash : \text{Hp} .\supset: r \supset p . r \supset \sim q :$$

$$[\text{Comp}] \quad \supset : r .\supset. p . \sim q \tag{4}$$

$$\vdash .(1).(4).\text{Comp} .\supset \vdash :. \text{Hp} .\supset: p . \sim q .\equiv. r :\supset \vdash . \text{Prop}$$
