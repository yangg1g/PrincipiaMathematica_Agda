# ∗10. Theory of Propositions containing One Apparent Variable

## Summary of ∗10

The chief purpose of the propositions of this number is to extend to formal implications (i.e. to propositions of the form $(x) . \phi x \supset \psi x$) as many as possible of the propositions proved previously for material implications, i.e. for propositions of the form $p \supset q$. Formal implication ($(x) . \phi x \supset \psi x$) is a relation of two functions $\phi\hat{x}$ and $\psi\hat{x}$. Many of the formal properties of this relation are analogous to properties of the relation "$p \supset q$" which expresses material implication; it is such analogues that are to be proved in this number.

We assume in this number, what has been proved in ∗9, that the propositions of ∗1–∗5 can be applied to such propositions as $(x) . \phi x$ and $(\exists x) . \phi x$.

### Key propositions proved in this number:

- **∗10.1** $\vdash : (x) . \phi x .\supset. \phi y$ — what is true in all cases is true in any one case
- **∗10.11** If $\phi y$ is true whatever possible argument $y$ may be, then $(x) . \phi x$ is true
- **∗10.21** $\vdash :. (x) . p \supset \phi x .\equiv: p .\supset. (x) . \phi x$
- **∗10.22** $\vdash :. (x) . \phi x . \psi x .\equiv: (x) . \phi x : (x) . \psi x$
- **∗10.23** $\vdash :. (x) . \phi x \supset p .\equiv: (\exists x) . \phi x .\supset. p$ — if φx always implies p, then if φx is ever true, p is true
- **∗10.24** $\vdash : \phi y .\supset. (\exists x) . \phi x$ — the sole method of proving existence-theorems
- **∗10.27** $\vdash :. (z) . \phi z \supset \psi z .\supset: (z) . \phi z .\supset. (z) . \psi z$ — if φz always implies ψz, then "φz always" implies "ψz always"
- **∗10.28** $\vdash :. (x) . \phi x \supset \psi x .\supset: (\exists x) . \phi x .\supset. (\exists x) . \psi x$
- **∗10.35** $\vdash :. (\exists x) . p . \phi x .\equiv: p : (\exists x) . \phi x$
- **∗10.42** $\vdash :. (\exists x) . \phi x .\vee. (\exists x) . \psi x :\equiv. (\exists x) . \phi x \vee \psi x$ — contrast with ∗10.5
- **∗10.5** $\vdash :. (\exists x) . \phi x . \psi x .\supset: (\exists x) . \phi x : (\exists x) . \psi x$ — only an implication, not equivalence

---

## Definitions

$$*10.01. \quad (\exists x) . \phi x \;.\;=\;.\; \sim(x) . \sim\phi x \qquad \text{Df}$$

(This definition is only used when we discard the method of ∗9 in favour of the alternative method. In either case we have $\vdash : (\exists x) . \phi x .\equiv. \sim(x) . \sim\phi x$.)

$$*10.02. \quad \phi x \supset_x \psi x \;.\;=\;.\; (x) . \phi x \supset \psi x \qquad \text{Df}$$

$$*10.03. \quad \phi x \equiv_x \psi x \;.\;=\;.\; (x) . \phi x \equiv \psi x \qquad \text{Df}$$

---

## Primitive Propositions (from ∗9)

### ∗10.1. $\vdash : (x) . \phi x .\supset. \phi y$ [∗9.2]

What is true in all cases is true in any one case.

---

### ∗10.11. If $\phi y$ is true whatever possible argument $y$ may be, then $(x) . \phi x$ is true. [∗9.13]

This is, in a sense, the converse of ∗10.1. ∗10.1 may be stated: "What is true of all is true of any," while ∗10.11 may be stated: "What is true of any, however chosen, is true of all."

---

### ∗10.12. $\vdash :. (x) . p \vee \phi x .\supset: p .\vee. (x) . \phi x$ [∗9.25]

---

### ∗10.121. If "$\phi x$" is significant, then if $a$ is of the same type as $x$, "$\phi a$" is significant, and vice versa. [∗9.14]

---

### ∗10.122. If, for some $a$, there is a proposition $\phi a$, then there is a function $\phi\hat{x}$, and vice versa. [∗9.15]

---

## Proofs

### ∗10.13. If $\phi\hat{x}$ and $\psi\hat{x}$ take arguments of the same type, and we have "$\vdash . \phi x$" and "$\vdash . \psi x$," we shall have "$\vdash . \phi x . \psi x$."

**Dem.**

$$\vdash . *2.11 . *3.01 .\supset \vdash : \sim\phi x \vee \sim\psi x .\vee. \phi x . \psi x \tag{1}$$

$$\vdash .(1). *2.32 .(*1.01) .\supset \vdash :. \phi x .\supset: \psi x .\supset. \phi x . \psi x \tag{2}$$

$$\vdash .(2). *9.12 .\supset \vdash . \text{Prop}$$

---

### ∗10.14. $\vdash : (x) . \phi x : (x) . \psi x : \supset. \phi y . \psi y$

This proposition is true whenever it is significant, but it is not always significant when its hypothesis is significant. The thesis demands that $\phi$ and $\psi$ should take arguments of the same type, while the hypothesis does not demand this.

**Dem.**

$$\vdash . *10.1 .\supset \vdash : (x) . \phi x .\supset. \phi y \tag{1}$$

$$\vdash . *10.1 .\supset \vdash : (x) . \psi x .\supset. \psi y \tag{2}$$

$$\vdash .(1).(2). *10.13 .\supset \vdash : (x) . \phi x .\supset. \phi y : (x) . \psi x .\supset. \psi y :$$

$$[*3.47] \quad \supset \vdash : (x) . \phi x : (x) . \psi x : \supset. \phi y . \psi y :.\supset \vdash . \text{Prop}$$

---

### ∗10.2. $\vdash :. (x) . p \vee \phi x .\equiv: p .\vee. (x) . \phi x$

**Dem.**

$$\vdash . *10.1 . *1.6 .\supset \vdash : p .\vee. (x) . \phi x : \supset. p \vee \phi y :. \tag{1}$$

$$[*10.11] \quad \supset \vdash :. (y) : p .\vee. (x) . \phi x : \supset. p \vee \phi y :.$$

$$[*10.21] \quad \supset \vdash :. p .\vee. (x) . \phi x : \supset. (y) . p \vee \phi y$$

$$\vdash . *10.12 .\supset \vdash :. (y) . p \vee \phi y .\supset: p .\vee. (x) . \phi x \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash . \text{Prop}$$

---

### ∗10.21. $\vdash :. (x) . p \supset \phi x .\equiv: p .\supset. (x) . \phi x$

$$\left[*10.2\;\frac{\sim p}{p}\right]$$

This proposition is much more used than ∗10.2.

---

### ∗10.22. $\vdash :. (x) . \phi x . \psi x .\equiv: (x) . \phi x : (x) . \psi x$

The conditions of significance demand that $\phi$ and $\psi$ should take arguments of the same type.

**Dem.**

$$\vdash . *10.1 .\supset \vdash : (x) . \phi x . \psi x .\supset. \phi y . \psi y . \tag{1}$$

$$[*3.26] \quad \supset . \phi y :$$

$$[*10.11] \quad \supset \vdash : (y) : (x) . \phi x . \psi x .\supset. \phi y :.$$

$$[*10.21] \quad \supset \vdash :. (x) . \phi x . \psi x .\supset. (y) . \phi y \tag{2}$$

$$\vdash .(1). *3.27 .\supset \vdash :. (x) . \phi x . \psi x .\supset. \psi z :$$

$$[*10.11] \quad \supset \vdash :. (z) : (x) . \phi x . \psi x .\supset. \psi z :.$$

$$[*10.21] \quad \supset \vdash :. (x) . \phi x . \psi x .\supset. (z) . \psi z \tag{3}$$

$$\vdash .(2).(3).\text{Comp} .\supset \vdash :. (x) . \phi x . \psi x .\supset: (y) . \phi y : (z) . \psi z \tag{4}$$

$$\vdash . *10.14 . *10.11 .\supset \vdash : (y) :. (x) . \phi x : (x) . \psi x : \supset. \phi y . \psi y :.$$

$$[*10.21] \quad \supset \vdash :. (x) . \phi x : (x) . \psi x : \supset. (y) . \phi y . \psi y \tag{5}$$

$$\vdash .(4).(5) .\supset \vdash . \text{Prop}$$

---

### ∗10.221. Note on significance

If $\phi x$ contains a constituent $\chi(x, y, z, \ldots)$ and $\psi x$ contains a constituent $\chi(x, u, v, \ldots)$, where $\chi$ is an elementary function and $y, z, \ldots, u, v, \ldots$ are either constants or apparent variables, then $\phi\hat{x}$ and $\psi\hat{x}$ take arguments of the same type. This can be proved in each particular case, though not generally, provided that, in obtaining $\phi$ and $\psi$ from $\chi$, $\chi$ is only submitted to negations, disjunctions and generalizations.

---

### ∗10.23. $\vdash :. (x) . \phi x \supset p .\equiv: (\exists x) . \phi x .\supset. p$

**Dem.** (using definitions of ∗9)

$$\vdash . *4.2 .(*9.03) .\supset \vdash : (x) . \sim\phi x \vee p .\equiv: (x) . \sim\phi x .\vee. p : \tag{1}$$

$$[(*9.02)] \quad \equiv. (\exists x) . \phi x .\supset. p$$

$$\vdash .(1).(*1.01) .\supset \vdash . \text{Prop}$$

**Dem.** (alternative method, using ∗10.01)

$$\vdash . \text{Transp} .(*10.01) .\supset \vdash : (\exists x) . \phi x .\supset. p : \equiv : \sim p .\supset. (x) . \sim\phi x :$$

$$[*10.21] \quad \equiv : (x) : \sim p .\supset. \sim\phi x :$$

$$[*10.1] \quad \supset : \sim p .\supset. \sim\phi x :$$

$$[\text{Transp}] \quad \supset : \phi x .\supset. p :.$$

$$[*10.11] \quad \supset \vdash : (x) : (\exists x) . \phi x .\supset. p : \supset : \phi x .\supset. p :. \tag{1}$$

$$[*10.21] \quad \supset \vdash : (\exists x) . \phi x .\supset. p : \supset : (x) : \phi x .\supset. p \tag{2}$$

$$\vdash . *10.1 \quad \supset \vdash : (x) : \phi x .\supset. p : \supset : \phi x \supset p :$$

$$[\text{Transp}]$$

$$[*10.11.21] \quad \supset \vdash : (x) : \phi x .\supset. p : \supset : (x) : \sim p .\supset. \sim\phi x :$$

$$[(*10.01)] \quad \supset : (\exists x) . \phi x .\supset. p \tag{3}$$

$$\vdash .(2).(3) .\supset \vdash . \text{Prop}$$

Whenever we have an asserted proposition of the form $p \supset \phi x$, we can pass by ∗10.11.21 to an asserted proposition $p .\supset. (x) . \phi x$. This passage is constantly required.

---

### ∗10.24. $\vdash : \phi y .\supset. (\exists x) . \phi x$

This is ∗9.1. In the alternative method, the proof is as follows.

**Dem.**

$$\vdash . *10.1 .\supset \vdash : (x) . \sim\phi x .\supset. \sim\phi y :$$

$$[\text{Transp}] \quad \supset : \phi y .\supset. \sim(x) . \sim\phi x :$$

$$[(*10.01)] \quad \supset \vdash . \text{Prop}$$

---

### ∗10.25. $\vdash : (x) . \phi x .\supset. (\exists x) . \phi x$

$$[*10.1.24]$$

---

### ∗10.251. $\vdash : (x) . \sim\phi x .\supset. \sim\{(x) . \phi x\}$

$$[*10.25.\text{Transp}]$$

---

### ∗10.252. $\vdash : \sim\{(\exists x) . \phi x\} .\equiv. (x) . \sim\phi x$

$$[*4.2.(*9.02)]$$

In the alternative method: $[*4.13.(*10.01)]$

---

### ∗10.253. $\vdash : \sim\{(x) . \phi x\} .\equiv. (\exists x) . \sim\phi x$

$$[*4.2.(*9.01)]$$

In the alternative method:

**Dem.**

$$\vdash . *10.1 .\supset \vdash : (x) . \phi x .\supset. \phi y .$$

$$[*2.12] \quad \supset . \sim(\sim\phi y) :$$

$$[*10.11.21] \quad \supset \vdash : (x) . \phi x .\supset. (y) . \sim(\sim\phi y) :$$

$$[\text{Transp}] \quad \supset : \sim\{(y) . \sim(\sim\phi y)\} .\supset. \sim\{(x) . \phi x\} :$$

$$[(*10.01)] \quad \supset \vdash : (\exists y) . \sim\phi y .\supset. \sim\{(x) . \phi x\} \tag{1}$$

$$\vdash . *10.1 .\supset \vdash : (y) . \sim(\sim\phi y) .\supset. \sim(\sim\phi x) .$$

$$[*2.14] \quad \supset . \phi x :$$

$$[*10.11.21] \quad \supset \vdash : (y) . \sim(\sim\phi y) .\supset. (x) . \phi x :$$

$$[\text{Transp}] \quad \supset : \sim\{(x) . \phi x\} .\supset. \sim\{(y) . \sim(\sim\phi y)\} .$$

$$[(*10.01)] \quad \supset . (\exists y) . \sim\phi y \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash . \text{Prop}$$

---

### ∗10.26. $\vdash :. (z) . \phi z \supset \psi z : \phi x : \supset. \psi x$

$$[*10.1.\text{Imp}]$$

This is one form of the syllogism in Barbara. E.g. put $\phi z .=. z$ is a man, $\psi z .=. z$ is mortal, $x =$ Socrates. Then the proposition becomes: "If all men are mortal, and Socrates is a man, then Socrates is mortal."

---

### ∗10.27. $\vdash :. (z) . \phi z \supset \psi z .\supset: (z) . \phi z .\supset. (z) . \psi z$

This is ∗9.21. In the alternative method, the proof is as follows.

**Dem.**

$$\vdash . *10.14 .\supset \vdash :. (z) . \phi z \supset \psi z : (z) . \phi z : \supset. \phi y \supset \psi y . \phi y .$$

$$[\text{Ass}] \quad \supset. \psi y :.$$

$$[*10.11] \quad \supset \vdash :. (y) :. (z) . \phi z \supset \psi z : (z) . \phi z : \supset. \psi y :. \tag{1}$$

$$[*10.21] \quad \supset \vdash :. (z) . \phi z \supset \psi z : (z) . \phi z : \supset. (y) . \psi y$$

$$\vdash .(1).\text{Exp} .\supset \vdash . \text{Prop}$$

---

### ∗10.271. $\vdash :. (z) . \phi z \equiv \psi z .\supset: (z) . \phi z .\equiv. (z) . \psi z$

**Dem.**

$$\vdash . *10.22 \quad \supset \vdash :. \text{Hp} .\supset: (z) . \phi z \supset \psi z :$$

$$[*10.27] \quad \supset : (z) . \phi z .\supset. (z) . \psi z \tag{1}$$

$$\vdash . *10.22 \quad \supset \vdash :. \text{Hp} .\supset: (z) . \psi z \supset \phi z :$$

$$[*10.27] \quad \supset : (z) . \psi z .\supset. (z) . \phi z \tag{2}$$

$$\vdash .(1).(2).\text{Comp} .\supset \vdash . \text{Prop}$$

---

### ∗10.28. $\vdash :. (x) . \phi x \supset \psi x .\supset: (\exists x) . \phi x .\supset. (\exists x) . \psi x$

This is ∗9.22. In the alternative method, the proof is as follows.

**Dem.**

$$\vdash . *10.1 .\supset \vdash : (x) . \phi x \supset \psi x .\supset. \phi y \supset \psi y .$$

$$[\text{Transp}] \quad \supset . \sim\psi y \supset \sim\phi y :.$$

$$[*10.11.21] \quad \supset \vdash : (x) . \phi x \supset \psi x .\supset: (y) . \sim\psi y \supset \sim\phi y :$$

$$[*10.27] \quad \supset : (y) . \sim\psi y .\supset. (y) . \sim\phi y :$$

$$[\text{Transp}] \quad \supset : (\exists y) . \phi y .\supset. (\exists y) . \psi y :.\supset \vdash . \text{Prop}$$

---

### ∗10.281. $\vdash :. (x) . \phi x \equiv \psi x .\supset: (\exists x) . \phi x .\equiv. (\exists x) . \psi x$

$$[*10.22.*28.\text{Comp}]$$

---

### ∗10.29. $\vdash : (x) . \phi x \supset \psi x : (x) . \phi x \supset \chi x :\equiv: (x) : \phi x .\supset. \psi x . \chi x$

Extension of the principle of composition.

**Dem.**

$$\vdash . *10.22 .\supset \vdash : (x) . \phi x \supset \psi x : (x) . \phi x \supset \chi x :$$

$$\equiv : (x) : \phi x \supset \psi x . \phi x \supset \chi x \tag{1}$$

$$\vdash . *4.76 .\supset \vdash : \phi x \supset \psi x . \phi x \supset \chi x .\equiv: \phi x .\supset. \psi x . \chi x :$$

$$[*10.11] \quad \supset \vdash : (x) : \phi x \supset \psi x . \phi x \supset \chi x .\equiv: \phi x .\supset. \psi x . \chi x :$$

$$[*10.271] \quad \supset \vdash : (x) : \phi x \supset \psi x . \phi x \supset \chi x :\equiv: (x) : \phi x .\supset. \psi x . \chi x \tag{2}$$

$$\vdash .(1).(2) .\supset \vdash . \text{Prop}$$

---

### ∗10.3. $\vdash : (x) . \phi x \supset \psi x : (x) . \psi x \supset \chi x : \supset. (x) . \phi x \supset \chi x$

The second form of the syllogism in Barbara.

**Dem.**

$$\vdash . *10.22.221 .\supset \vdash : \text{Hp} .\supset. (x) . \phi x \supset \psi x . \psi x \supset \chi x .$$

$$[\text{Syll}.*10.27] \quad \supset . (x) . \phi x \supset \chi x :.\supset \vdash . \text{Prop}$$

---

### ∗10.301. $\vdash : (x) . \phi x \equiv \psi x : (x) . \psi x \equiv \chi x : \supset. (x) . \phi x \equiv \chi x$

**Dem.**

$$\vdash . *10.22.221 .\supset \vdash : \text{Hp} .\supset: (x) . \phi x \equiv \psi x . \psi x \equiv \chi x :$$

$$[*4.22.*10.27] \quad \supset : (x) . \phi x \equiv \chi x :.\supset \vdash . \text{Prop}$$

The above two propositions show that formal implication and formal equivalence are transitive relations between functions.

---

### ∗10.31. $\vdash :. (x) . \phi x \supset \psi x .\supset: (x) : \phi x . \chi x .\supset. \psi x . \chi x$

Extension of the principle of the factor.

**Dem.**

$$\vdash . \text{Fact} . *10.11 .\supset \vdash :. (x) : \phi x \supset \psi x .\supset: \phi x . \chi x .\supset. \psi x . \chi x \tag{1}$$

$$\vdash .(1). *10.27 .\supset \vdash . \text{Prop}$$

---

### ∗10.311. $\vdash :. (x) . \phi x \equiv \psi x .\supset: (x) : \phi x . \chi x .\equiv. \psi x . \chi x$

**Dem.**

$$\vdash . *4.36 . *10.11 .\supset \vdash : (x) :. \phi x \equiv \psi x .\supset: \phi x . \chi x .\equiv. \psi x . \chi x \tag{1}$$

$$\vdash .(1). *10.27 .\supset \vdash . \text{Prop}$$

---

### ∗10.32. $\vdash : \phi x \equiv_x \psi x .\equiv. \psi x \equiv_x \phi x$

Formal equivalence is symmetrical.

**Dem.**

$$\vdash . *10.22 .\supset \vdash : \phi x \equiv_x \psi x .\equiv. \phi x \supset_x \psi x . \psi x \supset_x \phi x .$$

$$[*4.3] \quad \equiv. \psi x \supset_x \phi x . \phi x \supset_x \psi x .$$

$$[*10.22] \quad \equiv. \psi x \equiv_x \phi x :.\supset \vdash . \text{Prop}$$

---

### ∗10.321. $\vdash : \phi x \equiv_x \psi x . \phi x \equiv_x \chi x .\supset. \psi x \equiv_x \chi x$

**Dem.**

$$\vdash . *10.32 . \text{Fact} .\supset \vdash : \text{Hp} .\supset. \psi x \equiv_x \phi x . \phi x \equiv_x \chi x .$$

$$[*10.301] \quad \supset . \psi x \equiv_x \chi x :.\supset \vdash . \text{Prop}$$

---

### ∗10.322. $\vdash : \psi x \equiv_x \phi x . \chi x \equiv_x \phi x .\supset. \psi x \equiv_x \chi x$

**Dem.**

$$\vdash . *10.32 .\supset \vdash : \text{Hp} .\supset. \psi x \equiv_x \phi x . \phi x \equiv_x \chi x .$$

$$[*10.301] \quad \supset . \psi x \equiv_x \chi x :.\supset \vdash . \text{Prop}$$

---

### ∗10.33. $\vdash :. (x) : \phi x . p :\equiv: (x) . \phi x : p$

**Dem.**

$$\vdash . *10.1 .\supset \vdash :. (x) : \phi x . p : \supset. \phi y . p . \tag{1}$$

$$[*3.27]$$

$$\vdash .(1). *3.26 .\supset \vdash : (x) : \phi x . p : \supset. \phi y :$$

$$[*10.11.21] \quad \supset \vdash :. (x) : \phi x . p :\supset. (y) . \phi y \tag{2}$$

$$\vdash .(2).(3) .\supset \vdash : (x) : \phi x . p : \supset : (y) . \phi y : p \tag{4}$$

$$\vdash . *10.1 .\supset \vdash : (y) . \phi y .\supset. \phi x :.$$

$$[\text{Fact}] \quad \supset \vdash : (y) . \phi y : p : \supset. \phi x . p :.$$

$$[*10.11.21] \quad \supset \vdash :. (y) . \phi y : p :\supset: (x) : \phi x . p \tag{5}$$

$$\vdash .(4).(5) .\supset \vdash . \text{Prop}$$

---

### ∗10.34. $\vdash : (\exists x) . \phi x \supset p .\equiv: (x) . \phi x .\supset. p$

This follows immediately from ∗9.05.01 and ∗1.01. In the alternative method:

**Dem.**

$$\vdash . *4.2 .(*10.01) .\supset$$

$$\vdash :. (\exists x) . \phi x \supset p .\equiv: \sim\{(x) . \sim(\phi x \supset p)\} :$$

$$[*4.61.*10.271] \quad \equiv : \sim\{(x) : \phi x . \sim p\} :$$

$$[*10.33] \quad \equiv : \sim\{(x) . \phi x : \sim p\} :$$

$$[*4.53] \quad \equiv : \sim\{(x) . \phi x\} .\vee. p :$$

$$[*4.6] \quad \equiv : (x) . \phi x .\supset. p$$

---

### ∗10.35. $\vdash :. (\exists x) . p . \phi x .\equiv: p : (\exists x) . \phi x$

**Dem.**

$$\vdash . *3.26 .\supset \vdash : p . \phi x .\supset. p :$$

$$[*10.11] \quad \supset \vdash : (x) : p . \phi x .\supset. p :$$

$$[*10.23] \quad \supset \vdash : (\exists x) . p . \phi x .\supset. p \tag{1}$$

$$\vdash . *3.27 .\supset \vdash : p . \phi x .\supset. \phi x :$$

$$[*10.11] \quad \supset \vdash : (x) : p . \phi x .\supset. \phi x :$$

$$[*10.28] \quad \supset \vdash : (\exists x) . p . \phi x .\supset. (\exists x) . \phi x \tag{2}$$

$$\vdash . *3.2 .\supset \vdash : p .\supset: \phi x .\supset. p . \phi x .$$

$$[*10.11.21] \quad \supset \vdash : p .\supset: (x) : \phi x .\supset. p . \phi x :$$

$$[*10.28] \quad \supset : (\exists x) . \phi x .\supset. (\exists x) . p . \phi x \tag{3}$$

$$\vdash .(1).(2).(3).\text{Imp} .\supset \vdash . \text{Prop}$$

---

### ∗10.36. $\vdash :. (\exists x) . \phi x \vee p .\equiv: (\exists x) . \phi x .\vee. p$

This follows immediately from ∗9.05. In the alternative method:

**Dem.**

$$\vdash . *4.64 .\supset \vdash : \phi x \vee p .\equiv. \sim\phi x \supset p :$$

$$[*10.11] \quad \supset \vdash : (x) : \phi x \vee p .\equiv. \sim\phi x \supset p :$$

$$[*10.281] \quad \supset \vdash :. (\exists x) . \phi x \vee p .\equiv: (\exists x) . \sim\phi x \supset p :$$

$$[*10.34] \quad \equiv : (x) . \sim\phi x .\supset. p :$$

$$[*4.6.(*10.01)] \quad \equiv : (\exists x) . \phi x .\vee. p :.\supset \vdash . \text{Prop}$$

---

### ∗10.37. $\vdash : (\exists x) . p \supset \phi x .\equiv: p .\supset. (\exists x) . \phi x$

$$\left[*10.36\;\frac{\sim p}{p}\right]$$

---

### ∗10.39. $\vdash :. \phi x \supset_x \chi x : \psi x \supset_x \theta x : \supset : \phi x . \psi x .\supset_x. \chi x . \theta x$

**Dem.**

$$\vdash . *10.22 .\supset \vdash :. \text{Hp} .\supset: (x) : \phi x \supset \chi x . \psi x \supset \theta x :$$

$$[*3.47.*10.27] \quad \supset : (x) : \phi x . \psi x .\supset. \chi x . \theta x :.\supset \vdash . \text{Prop}$$

This proposition is only true when the conclusion is significant; the significance of the hypothesis does not ensure that of the conclusion.

---

### ∗10.4. $\vdash :. \phi x \equiv_x \chi x . \psi x \equiv_x \theta x .\supset: \phi x . \psi x .\equiv_x. \chi x . \theta x$

**Dem.**

$$\vdash . *10.22 .\supset \vdash :. \text{Hp} .\supset: \phi x \supset_x \chi x . \psi x \supset_x \theta x :$$

$$[*10.39] \quad \supset : \phi x . \psi x .\supset_x. \chi x . \theta x \tag{1}$$

$$\text{Similarly} \quad \vdash :. \text{Hp} .\supset: \chi x . \theta x .\supset_x. \phi x . \psi x \tag{2}$$

$$\vdash .(1).(2).\text{Comp} .\supset \vdash :. \text{Hp} .\supset: \phi x . \psi x .\supset_x. \chi x . \theta x : \chi x . \theta x .\supset_x. \phi x . \psi x :$$

$$[*10.22] \quad \supset : \phi x . \psi x .\equiv_x. \chi x . \theta x :.\supset \vdash . \text{Prop}$$

---

### ∗10.41. $\vdash :. (x) . \phi x .\vee. (x) . \psi x :\supset. (x) . \phi x \vee \psi x$

**Dem.**

$$\vdash . *10.1 .\supset \vdash :: (x) . \phi x .\supset. \phi y .$$

$$[*2.2] \quad \supset . \phi y \vee \psi y \tag{1}$$

$$\vdash . *10.1 .\supset \vdash : (x) . \psi x .\supset. \psi y .$$

$$[*1.3] \quad \supset . \phi y \vee \psi y \tag{2}$$

$$\vdash .(1).(2). *10.13 .\supset \vdash :. (x) . \phi x .\supset. \phi y \vee \psi y : (x) . \psi x .\supset. \phi y \vee \psi y :$$

$$[*3.44] \quad \supset :: (x) . \phi x .\vee. (x) . \psi x : \supset. \phi y \vee \psi y$$

$$[*10.11.21] \quad \supset \vdash :. (x) . \phi x .\vee. (x) . \psi x :\supset. (y) . \phi y \vee \psi y :.\supset \vdash . \text{Prop}$$

The uses of ∗2.2 and ∗1.3 are only legitimate if $\phi y$ and $\psi y$ have overlapping ranges of significance.

---

### ∗10.411. $\vdash :. \phi x \equiv_x \chi x . \psi x \equiv_x \theta x .\supset: \phi x \vee \psi x .\equiv_x. \chi x \vee \theta x$

**Dem.**

$$\vdash . *10.14 .\supset \vdash : \text{Hp} .\supset: \phi x \equiv \chi x . \psi x \equiv \theta x :$$

$$[*4.39] \quad \supset : \phi x \vee \psi x .\equiv. \chi x \vee \theta x \tag{1}$$

$$\vdash .(1). *10.11.21 .\supset \vdash . \text{Prop}$$

---

### ∗10.412. $\vdash : \phi x \equiv_x \psi x .\equiv. \sim\phi x \equiv_x \sim\psi x$

$$[*4.11.*10.11.271]$$

---

### ∗10.413. $\vdash :. \phi x \equiv_x \chi x . \psi x \equiv_x \theta x .\supset: \phi x \supset \psi x .\equiv_x. \chi x \supset \theta x$

**Dem.**

$$\vdash . *10.411.412 .\supset \vdash : \text{Hp} .\supset: \sim\phi x \vee \psi x .\equiv_x. \sim\chi x \vee \theta x$$

$$[(*1.01)] \quad \supset : \phi x \supset \psi x .\equiv_x. \chi x \supset \theta x :.\supset \vdash . \text{Prop}$$

---

### ∗10.414. $\vdash :. \phi x \equiv_x \chi x . \psi x \equiv_x \theta x .\supset: \phi x \equiv \psi x .\equiv_x. \chi x \equiv \theta x$

**Dem.**

$$\vdash . *10.413\;\frac{\psi,\phi,\theta,\chi}{\phi,\psi,\chi,\theta} . *10.32 .\supset \vdash : \text{Hp} .\supset: \psi x \supset \phi x .\equiv_x. \theta x \supset \chi x \tag{1}$$

$$\vdash . *10.413 .(1). *10.4 .\supset \vdash . \text{Prop}$$

The propositions ∗10.413.414 are chiefly used in cases where either $\chi$ is replaced by $\phi$ or $\theta$ is replaced by $\psi$, in which case half the hypothesis becomes superfluous, being true by ∗4.2.

---

### ∗10.42. $\vdash : (\exists x) . \phi x .\vee. (\exists x) . \psi x :\equiv. (\exists x) . \phi x \vee \psi x$

This proposition is very frequently used. It should be contrasted with ∗10.5, in which we have only an implication, not an equivalence.

**Dem.**

$$\vdash . *10.22 .\supset \vdash : (x) . \sim\phi x : (x) . \sim\psi x :\equiv. (x) . \sim\phi x . \sim\psi x :.$$

$$[*4.11] \quad \supset \vdash :. \sim\{(x) . \sim\phi x : (x) . \sim\psi x\} .\equiv. \sim\{(x) . \sim\phi x . \sim\psi x\} :.$$

$$[*4.51.56.*10.271] \quad \supset :. \sim\{(x) . \sim\phi x\} .\vee. \sim\{(x) . \sim\psi x\} :$$

$$\equiv . \sim\{(x) . \sim(\phi x \vee \psi x)\} :.$$

$$[*10.253] \quad \supset \vdash : (\exists x) . \phi x .\vee. (\exists x) . \psi x :\equiv. (\exists x) . \phi x \vee \psi x :.$$

$$\supset \vdash . \text{Prop}$$

---

### ∗10.43. $\vdash : \phi z \equiv_z \psi z . \phi x .\equiv. \phi z \equiv_z \psi z . \psi x$

**Dem.**

$$\vdash . *10.1 .\supset \vdash : \phi z \equiv_z \psi z .\supset. \phi x \equiv \psi x \tag{1}$$

$$\vdash .(1). *5.32 .\supset \vdash . \text{Prop}$$

---

### ∗10.5. $\vdash :. (\exists x) . \phi x . \psi x .\supset: (\exists x) . \phi x : (\exists x) . \psi x$

The converse of this proposition is false. The fact that this proposition states an implication, while ∗10.42 states an equivalence, is the source of many subsequent differences between formulae concerning logical addition and formulae concerning logical multiplication.

**Dem.**

$$\vdash . *3.26 . *10.11 .\supset \vdash : (x) : \phi x . \psi x .\supset. \phi x :$$

$$[*10.28] \quad \supset \vdash : (\exists x) . \phi x . \psi x .\supset. (\exists x) . \phi x \tag{1}$$

$$\vdash . *3.27 . *10.11 .\supset \vdash : (x) : \phi x . \psi x .\supset. \psi x :$$

$$[*10.28] \quad \supset \vdash : (\exists x) . \phi x . \psi x .\supset. (\exists x) . \psi x \tag{2}$$

$$\vdash .(1).(2).\text{Comp} .\supset \vdash . \text{Prop}$$

---

### ∗10.51. $\vdash :. \sim\{(\exists x) . \phi x . \psi x\} .\equiv: \phi x .\supset_x. \sim\psi x$

**Dem.**

$$\vdash . *10.252 .\supset \vdash : \sim\{(\exists x) . \phi x . \psi x\} .\equiv: (x) . \sim(\phi x . \psi x) :$$

$$[*4.51.62.*10.271] \quad \equiv : (x) : \phi x .\supset. \sim\psi x :.\supset \vdash . \text{Prop}$$

---

### ∗10.52. $\vdash : (\exists x) . \phi x .\supset: (x) . \phi x \supset p .\equiv. p$

**Dem.**

$$\vdash . *5.5 .\supset \vdash :: \text{Hp} .\supset: p .\equiv: (\exists x) . \phi x .\supset. p :$$

$$[*10.23] \quad \equiv : (x) . \phi x \supset p :: \supset \vdash . \text{Prop}$$

---

### ∗10.53. $\vdash :. \sim(\exists x) . \phi x .\supset: \phi x .\supset_x. \psi x$

**Dem.**

$$\vdash . *2.21 . *10.11 .\supset$$

$$\vdash : (x) : \sim\phi x .\supset: \phi x .\supset. \psi x :.$$

$$[*10.27] \quad \supset \vdash :. (x) . \sim\phi x .\supset: (x) : \phi x .\supset. \psi x :.$$

$$[*10.252] \quad \supset \vdash : \sim(\exists x) . \phi x .\supset: (x) : \phi x .\supset. \psi x :.\supset \vdash . \text{Prop}$$

---

### ∗10.541. $\vdash :. \phi y .\supset_y. p \vee \psi y :\equiv: p .\vee. \phi y \supset_y \psi y$

**Dem.**

$$\vdash . *4.2 .(*1.01) .\supset \vdash :. \phi y .\supset_y. p \vee \psi y : \equiv : (y) . \sim\phi y \vee p \vee \psi y :$$

$$[\text{Assoc}.*10.271] \quad \equiv : (y) . p \vee \sim\phi y \vee \psi y :$$

$$[*10.2] \quad \equiv : p .\vee. (y) . \sim\phi y \vee \psi y :$$

$$[(*1.01)] \quad \equiv : p .\vee. \phi y \supset_y \psi y :.\supset \vdash . \text{Prop}$$

---

### ∗10.542. $\vdash :. \phi y .\supset_y. p \supset \psi y :\equiv: p .\supset. \phi y \supset_y \psi y$

$$\left[*10.541\;\frac{\sim p}{p}\right]$$

This proposition is a lemma for ∗84.43.

---

### ∗10.55. $\vdash : (\exists x) . \phi x . \psi x : \phi x \supset_x \psi x :\equiv: (\exists x) . \phi x : \phi x \supset_x \psi x$

**Dem.**

$$\vdash . *4.71 .\supset \vdash : \phi x \supset \psi x .\supset: \phi x . \psi x .\equiv. \phi x \tag{1}$$

$$\vdash .(1). *10.11.27 .\supset$$

$$\vdash :. \phi x \supset_x \psi x .\supset: (x) : \phi x . \psi x .\equiv. \phi x :$$

$$[*10.281] \quad \supset : (\exists x) . \phi x . \psi x .\equiv. (\exists x) . \phi x \tag{2}$$

$$\vdash .(2). *5.32 .\supset \vdash . \text{Prop}$$

This proposition is a lemma for ∗117.12.121.

---

### ∗10.56. $\vdash : \phi x .\supset_x. \psi x : (\exists x) . \phi x . \chi x : \supset. (\exists x) . \psi x . \chi x$

**Dem.**

$$\vdash . *10.31 .\supset \vdash : \phi x .\supset_x. \psi x :\supset: \phi x . \chi x .\supset_x. \psi x . \chi x :$$

$$[*10.28] \quad \supset : (\exists x) . \phi x . \chi x .\supset. (\exists x) . \psi x . \chi x \tag{1}$$

$$\vdash .(1).\text{Imp} .\supset \vdash . \text{Prop}$$

This proposition and ∗10.57 are used in the theory of series (Part V).

---

### ∗10.57. $\vdash :. \phi x .\supset_x. \psi x \vee \chi x :\supset: \phi x \supset_x \psi x .\vee. (\exists x) . \phi x . \chi x$

**Dem.**

$$\vdash . *10.51 . \text{Fact} .\supset$$

$$\vdash :. \phi x .\supset_x. \psi x \vee \chi x : \sim(\exists x) . \phi x . \chi x :\supset: \phi x .\supset_x. \psi x \vee \chi x : \phi x .\supset_x. \sim\chi x :$$

$$[*10.29] \quad \supset : \phi x .\supset_x. \psi x \vee \chi x . \sim\chi x :$$

$$[*5.61] \quad \supset : \phi x .\supset_x. \psi x \tag{1}$$

$$\vdash .(1). *5.6 .\supset \vdash . \text{Prop}$$
