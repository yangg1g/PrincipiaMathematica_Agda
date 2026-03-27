# ∗9. Extension of the Theory of Deduction from Lower to Higher Types of Propositions

## Summary of ∗9

In this number, two new primitive ideas are introduced: "φx always" (i.e. φx is true for all values) and "φx sometimes" (i.e. there exists an x such that φx). When applied to elementary propositions, negation and disjunction have been defined in ∗1; here we show how to define them for first-order propositions (those of the forms $(x) . \phi x$ and $(\exists x) . \phi x$), and how to prove the analogues of ∗1.2–6 for such propositions. By repeating this process, propositions of any order can be reached, so in practice the type distinctions for negation and disjunction can be ignored.

### Key propositions proved in this number:

- **∗9.2** $\vdash : (x) . \phi x .\supset. \phi y$ — what holds in all cases holds in any one case
- **∗9.21** $\vdash :. (x) . \phi x \supset \psi x .\supset: (x) . \phi x .\supset. (x) . \psi x$ — if φx always implies ψx, then "φx always" implies "ψx always"
- **∗9.22** $\vdash :. (x) . \phi x \supset \psi x .\supset: (\exists x) . \phi x .\supset. (\exists x) . \psi x$ — if φx always implies ψx, then "φx sometimes" implies "ψx sometimes"
- **∗9.3** $\vdash : (x) . \phi x .\vee. (x) . \phi x :\supset. (x) . \phi x$ — analogue of ∗1.2 for $(x) . \phi x$
- **∗9.31** $\vdash : (\exists x) . \phi x .\vee. (\exists x) . \phi x :\supset. (\exists x) . \phi x$ — analogue of ∗1.2 for $(\exists x) . \phi x$

---

## Definitions

### Definition of Negation

$$*9.01. \quad \sim\{(x) . \phi x\} \;.\;=\;.\; (\exists x) . \sim \phi x \qquad \text{Df}$$

$$*9.02. \quad \sim\{(\exists x) . \phi x\} \;.\;=\;.\; (x) . \sim \phi x \qquad \text{Df}$$

$$*9.011. \quad \sim(x) . \phi x \;.\;=\;.\; \sim\{(x) . \phi x\} \qquad \text{Df}$$

$$*9.021. \quad \sim(\exists x) . \phi x \;.\;=\;.\; \sim\{(\exists x) . \phi x\} \qquad \text{Df}$$

### Definition of Disjunction

$$*9.03. \quad (x) . \phi x \;.\vee.\; p \;:=\;.\; (x) . \phi x \vee p \qquad \text{Df}$$

$$*9.04. \quad p \;.\vee.\; (x) . \phi x \;:=\;.\; (x) . p \vee \phi x \qquad \text{Df}$$

$$*9.05. \quad (\exists x) . \phi x \;.\vee.\; p \;:=\;.\; (\exists x) . \phi x \vee p \qquad \text{Df}$$

$$*9.06. \quad p \;.\vee.\; (\exists x) . \phi x \;:=\;.\; (\exists x) . p \vee \phi x \qquad \text{Df}$$

$$*9.07. \quad (x) . \phi x \;.\vee.\; (\exists y) . \psi y \;:=\;:\; (x) : (\exists y) . \phi x \vee \psi y \qquad \text{Df}$$

$$*9.08. \quad (\exists y) . \psi y \;.\vee.\; (x) . \phi x \;:=\;:\; (x) : (\exists y) . \psi y \vee \phi x \qquad \text{Df}$$

(The definitions ∗9.07.08 are to apply also when φ and ψ are not both elementary functions.)

---

## Primitive Propositions

### ∗9.1. $\vdash : \phi x .\supset. (\exists z) . \phi z$ Pp

If φx is true, then there is a value of φẑ which is true.

---

### ∗9.11. $\vdash : \phi x \vee \phi y .\supset. (\exists z) . \phi z$ Pp

This is only used once, in proving $(\exists z) . \phi z .\vee. (\exists z) . \phi z :\supset. (\exists z) . \phi z$, the analogue of ∗1.2.

---

### ∗9.12. What is implied by a true premiss is true. Pp.

The analogue of ∗1.1 for the new meaning of implication.

---

### ∗9.13. In any assertion containing a real variable, this real variable may be turned into an apparent variable of which all possible values are asserted to satisfy the function in question. Pp.

---

### ∗9.131. Definition of "being of the same type."

$u$ and $v$ "are of the same type" if (1) both are individuals, (2) both are elementary functions taking arguments of the same type, (3) $u$ is a function and $v$ is its negation, (4) $u$ is $\phi\hat{x}$ or $\psi\hat{x}$ and $v$ is $\phi\hat{x} \vee \psi\hat{x}$ where $\phi\hat{x}$ and $\psi\hat{x}$ are elementary functions, (5) $u$ is $(y) . \phi(\hat{x}, y)$ and $v$ is $(z) . \psi(\hat{x}, z)$ where $\phi(\hat{x}, \hat{y}), \psi(\hat{x}, \hat{y})$ are of the same type, (6) both are elementary propositions, (7) $u$ is a proposition and $v$ is $\sim u$, or (8) $u$ is $(x) . \phi x$ and $v$ is $(y) . \psi y$ where $\phi\hat{x}$ and $\psi\hat{x}$ are of the same type.

---

### ∗9.14. If "$\phi x$" is significant, then if $x$ is of the same type as $a$, "$\phi a$" is significant, and vice versa. Pp.

---

### ∗9.15. If, for some $a$, there is a proposition $\phi a$, then there is a function $\phi\hat{x}$, and vice versa. Pp.

---

## Proofs

### ∗9.2. $\vdash : (x) . \phi x .\supset. \phi y$

**Dem.**

$$\vdash . *2.1 .\supset \vdash . \sim \phi y \vee \phi y \tag{1}$$

$$\vdash . *9.1 .\supset \vdash : \sim \phi y \vee \phi y .\supset. (\exists x) . \sim \phi x \vee \phi y \tag{2}$$

$$\vdash .(1).(2). *1.11 .\supset \vdash . (\exists x) . \sim \phi x \vee \phi y \tag{3}$$

$$[(3).(*9.05)] \quad \vdash : (\exists x) . \sim \phi x .\vee. \phi y \tag{4}$$

$$[(4).(*9.01.*1.01)] \quad \vdash : (x) . \phi x .\supset. \phi y$$

---

### ∗9.21. $\vdash :. (x) . \phi x \supset \psi x .\supset: (x) . \phi x .\supset. (x) . \psi x$

If φx always implies ψx, then "φx always" implies "ψx always." Constantly used throughout the remainder of the work.

**Dem.**

$$\vdash . *2.08 .\supset \vdash : \phi z \supset \psi z .\supset. \phi z \supset \psi z \tag{1}$$

$$\vdash .(1). *9.1 .\supset \vdash : (\exists y) : \phi z \supset \psi z .\supset. \phi y \supset \psi z \tag{2}$$

$$\vdash .(2). *9.1 .\supset \vdash :. (\exists x) :.(\exists y) : \phi x \supset \psi x .\supset. \phi y \supset \psi z \tag{3}$$

$$\vdash .(3). *9.13 .\supset \vdash :: (z) :: (\exists x) :.(\exists y) : \phi x \supset \psi x .\supset. \phi y \supset \psi z \tag{4}$$

$$[(4).(*9.06)] \quad \vdash :: (z) :: (\exists x) :. \phi x \supset \psi x .\supset: (\exists y) . \phi y \supset \psi z \tag{5}$$

$$[(5).(*1.01.*9.08)] \quad \vdash :: (\exists x) . \sim(\phi x \supset \psi x) :\vee: (z) : (\exists y) . \sim \phi y \vee \psi z \tag{6}$$

$$[(6).(*9.08)] \quad \vdash :. (\exists x) . \sim(\phi x \supset \psi x) :\vee: (\exists y) . \sim \phi y .\vee. (z) . \psi z \tag{7}$$

$$[(7).(*1.01)] \quad \vdash : (x) . \phi x \supset \psi x .\supset: (y) . \phi y .\supset. (z) . \psi z \tag{8}$$

---

### ∗9.22. $\vdash :. (x) . \phi x \supset \psi x .\supset: (\exists x) . \phi x .\supset. (\exists x) . \psi x$

If φx always implies ψx, then if φx is sometimes true, so is ψx. Constantly used in the sequel.

**Dem.**

$$\vdash . *2.08 .\supset \vdash : \phi y \supset \psi y .\supset. \phi y \supset \psi y \tag{1}$$

$$\vdash .(1). *9.1 .\supset \vdash : (\exists z) : \phi y \supset \psi y .\supset. \phi y \supset \psi z \tag{2}$$

$$\vdash .(2). *9.1 .\supset \vdash :. (\exists x) :.(\exists z) : \phi x \supset \psi x .\supset. \phi y \supset \psi z \tag{3}$$

$$\vdash .(3). *9.13 .\supset \vdash :: (y) :: (\exists x) :.(\exists z) : \phi x \supset \psi x .\supset: \phi y \supset \psi z \tag{4}$$

$$[(4).(*9.06)] \quad \vdash :: (y) :: (\exists x) :. \phi x \supset \psi x .\supset: (\exists z) . \phi y \supset \psi z \tag{5}$$

$$[(5).(*1.01.*9.08)] \quad \vdash :: (\exists x) . \sim(\phi x \supset \psi x) :\vee: (y) : (\exists z) . \phi y \supset \psi z \tag{6}$$

$$[(6).(*1.01.*9.07)] \quad \vdash :: (\exists x) . \sim(\phi x \supset \psi x) :\vee: (y) . \sim \phi y .\vee. (\exists z) . \psi z \tag{7}$$

$$[(7).(*1.01.*9.01.02)] \quad \vdash :. (x) . \phi x \supset \psi x .\supset: (\exists y) . \phi y .\supset. (\exists z) . \psi z \tag{8}$$

---

### ∗9.23. $\vdash : (x) . \phi x .\supset. (x) . \phi x$

$$[\text{Id}.*9.13.21]$$

---

### ∗9.24. $\vdash : (\exists x) . \phi x .\supset. (\exists x) . \phi x$

$$[\text{Id}.*9.13.22]$$

---

### ∗9.25. $\vdash :. (x) . p \vee \phi x .\supset: p .\vee. (x) . \phi x$

$$[*9.23.(*9.04)]$$

---

### ∗9.3. $\vdash : (x) . \phi x .\vee. (x) . \phi x :\supset. (x) . \phi x$

Analogue of ∗1.2 for $(x) . \phi x$.

**Dem.**

$$\vdash . *1.2 .\supset \vdash . \phi x \vee \phi x .\supset. \phi x \tag{1}$$

$$\vdash .(1). *9.1 .\supset \vdash : (\exists y) : \phi x \vee \phi y .\supset. \phi x \tag{2}$$

$$\vdash .(2). *9.13 .\supset \vdash : (x) :.(\exists y) : \phi x \vee \phi y .\supset. \phi x \tag{3}$$

$$[(3).(*9.05.01.04)] \quad \vdash :. (x) :. \phi x .\vee. (y) . \phi y :\supset. \phi x \tag{4}$$

$$\vdash .(4). *9.21 .\supset \vdash :. (x) : \phi x .\vee. (y) . \phi y :\supset. (x) . \phi x \tag{5}$$

$$[(5).(*9.03)] \quad \vdash :. (x) . \phi x .\vee. (y) . \phi y :\supset. (x) . \phi x :\supset \vdash . \text{Prop}$$

---

### ∗9.31. $\vdash : (\exists x) . \phi x .\vee. (\exists x) . \phi x :\supset. (\exists x) . \phi x$

Analogue of ∗1.2 for $(\exists x) . \phi x$. This is the only proposition which employs ∗9.11.

**Dem.**

$$\vdash . *9.11. *9.13 .\supset \vdash : (y) : \phi x \vee \phi y .\supset. (\exists z) . \phi z \tag{1}$$

$$[(1).(*9.03.02)] \quad \vdash : (\exists y) . \phi x \vee \phi y .\supset. (\exists z) . \phi z \tag{2}$$

$$\vdash .(2). *9.13 .\supset \vdash : (x) : (\exists y) . \phi x \vee \phi y .\supset. (\exists z) . \phi z \tag{3}$$

$$[(3).(*9.03.02)] \quad \vdash :. (\exists x) : (\exists y) . \phi x \vee \phi y :\supset. (\exists z) . \phi z \tag{4}$$

$$[(4).(*9.05.06)] \quad \vdash : (\exists x) . \phi x .\vee. (\exists y) . \phi y :\supset. (\exists z) . \phi z$$

---

### ∗9.32. $\vdash : q .\supset: (x) . \phi x .\vee. q$

**Dem.**

$$\vdash . *1.3 .\supset \vdash : q .\supset: \phi x .\vee. q \tag{1}$$

$$\vdash .(1). *9.13 .\supset \vdash :. (x) : q .\supset: \phi x .\vee. q \tag{2}$$

$$[*9.25] \quad \supset \vdash :. q .\supset: (x) : \phi x .\vee. q \tag{3}$$

$$[(3).(*9.03)] \quad \vdash : q .\supset: (x) . \phi x .\vee. q$$

---

### ∗9.33. $\vdash : q .\supset: (\exists x) . \phi x .\vee. q$

$$[\text{Proof as above}]$$

---

### ∗9.34. $\vdash : (x) . \phi x .\supset: p .\vee. (x) . \phi x$

**Dem.**

$$\vdash . *1.3 .\supset \vdash : \phi x .\supset. p \vee \phi x \tag{1}$$

$$\vdash .(1). *9.13 .\supset \vdash : (x) : \phi x .\supset. p \vee \phi x \tag{2}$$

$$\vdash .(2). *9.21 .\supset \vdash : (x) . \phi x .\supset. (x) . p \vee \phi x \tag{3}$$

$$\vdash .(3).(*9.04) .\supset \vdash . \text{Prop}$$

---

### ∗9.35. $\vdash : (\exists x) . \phi x .\supset: p .\vee. (\exists x) . \phi x$

$$[\text{Proof as above}]$$

---

### ∗9.36. $\vdash :. p .\vee. (x) . \phi x :\supset: (x) . \phi x .\vee. p$

**Dem.**

$$\vdash . *1.4 .\supset \vdash : p \vee \phi x .\supset. \phi x \vee p \tag{1}$$

$$\vdash .(1). *9.13. *9.21 .\supset \vdash : (x) . p \vee \phi x .\supset. (x) . \phi x \vee p \tag{2}$$

$$\vdash .(2).(*9.03.04) .\supset \vdash . \text{Prop}$$

---

### ∗9.361. $\vdash : (x) . \phi x .\vee. p :\supset: p .\vee. (x) . \phi x$

$$[\text{Similar proof}]$$

---

### ∗9.37. $\vdash :. p .\vee. (\exists x) . \phi x :\supset: (\exists x) . \phi x .\vee. p$

$$[\text{Similar proof}]$$

---

### ∗9.371. $\vdash : (\exists x) . \phi x .\vee. p :\supset: p .\vee. (\exists x) . \phi x$

$$[\text{Similar proof}]$$

---

### ∗9.4. $\vdash :: p :\vee: q .\vee. (x) . \phi x :.\supset: q :\vee: p .\vee. (x) . \phi x$

**Dem.**

$$\vdash . *1.5. *9.21 .\supset \vdash : (x) : p .\vee. q \vee \phi x :\supset: (x) : q .\vee. p \vee \phi x \tag{1}$$

$$\vdash .(1).(*9.04) .\supset \vdash . \text{Prop}$$

---

### ∗9.401. $\vdash :: p :\vee: q .\vee. (\exists x) . \phi x :.\supset:. q :\vee: p .\vee. (\exists x) . \phi x$

$$[\text{As above}]$$

---

### ∗9.41. $\vdash :: p :\vee: (x) . \phi x .\vee. r :.\supset:. (x) . \phi x :\vee: p \vee r$

$$[\text{As above}]$$

---

### ∗9.411. $\vdash :: p :\vee: (\exists x) . \phi x .\vee. r :.\supset:. (\exists x) . \phi x :\vee: p \vee r$

$$[\text{As above}]$$

---

### ∗9.42. $\vdash :: (x) . \phi x :\vee: q \vee r :.\supset:. q :\vee: (x) . \phi x .\vee. r$

$$[\text{As above}]$$

---

### ∗9.421. $\vdash :: (\exists x) . \phi x :\vee: q \vee r :.\supset: q :\vee: (\exists x) . \phi x .\vee. r$

$$[\text{As above}]$$

---

### ∗9.5. $\vdash :: p \supset q .\supset: p .\vee. (x) . \phi x :\supset: q .\vee. (x) . \phi x$

**Dem.**

$$\vdash . *1.6 .\supset \vdash : p \supset q .\supset: p \vee \phi y .\supset. q \vee \phi y \tag{1}$$

$$\vdash .(1). *9.1.(*9.06) .\supset \vdash : p \supset q .\supset: (\exists x) : p \vee \phi x .\supset. q \vee \phi y \tag{2}$$

$$\vdash .(2). *9.13.(*9.04) .\supset \vdash :: p \supset q .\supset:. (y) :.(\exists x) : p \vee \phi x .\supset. q \vee \phi y \tag{3}$$

$$[(3).(*9.08)] \quad \vdash :: p \supset q .\supset: (\exists x) . \sim(p \vee \phi x) .\vee. (y) . q \vee \phi y \tag{4}$$

$$[(4).(*9.01)] \quad \vdash :: p \supset q .\supset:. (x) . p \vee \phi x .\supset. (y) . q \vee \phi y \tag{5}$$

$$[(5).(*9.04)] \quad \vdash :: p \supset q .\supset:. p .\vee. (x) . \phi x :\supset: q .\vee. (y) . \phi y$$

---

### ∗9.501. $\vdash :: p \supset q .\supset: p .\vee. (\exists x) . \phi x :\supset: q .\vee. (\exists x) . \phi x$

$$[\text{As above}]$$

---

### ∗9.51. $\vdash :: p .\supset. (x) . \phi x :\supset:. p \vee r .\supset: (x) . \phi x .\vee. r$

**Dem.**

$$\vdash . *1.6 .\supset \vdash :. p \supset \phi x .\supset: p \vee r .\supset. \phi x \vee r \tag{1}$$

$$\vdash .(1). *9.13. *9.21 .\supset \vdash :: (x) . p \supset \phi x .\supset:. (x) : p \vee r .\supset. \phi x \vee r \tag{2}$$

$$\vdash .(2).(*9.03.04) .\supset \vdash . \text{Prop}$$

---

### ∗9.511. $\vdash :: p .\supset. (\exists x) . \phi x :\supset:. p \vee r .\supset: (\exists x) . \phi x .\vee. r$

$$[\text{As above}]$$

---

### ∗9.52. $\vdash :: (x) . \phi x .\supset. q :\supset:. (x) . \phi x .\vee. r :\supset. q \vee r$

**Dem.**

$$\vdash . *1.6 .\supset \vdash : \phi x \supset q .\supset: \phi x \vee r .\supset. q \vee r \tag{1}$$

$$\vdash .(1). *9.13. *9.22 .\supset \vdash :: (\exists x) . \phi x \supset q .\supset: (\exists x) : \phi x \vee r .\supset. q \vee r \tag{2}$$

$$\vdash .(2).(*9.05.01) .\supset \vdash :: (x) . \phi x .\supset. q :\supset: (x) . \phi x \vee r .\supset. q \vee r \tag{3}$$

$$\vdash .(3).(*9.03) .\supset \vdash . \text{Prop}$$

---

### ∗9.521. $\vdash :: (\exists x) . \phi x .\supset. q :\supset: (\exists x) . \phi x .\vee. r :\supset. q \vee r$

$$[\text{As above}]$$

---

### ∗9.6. $(x) . \phi x$, $\sim(x) . \phi x$, $(\exists x) . \phi x$ and $\sim(\exists x) . \phi x$ are of the same type.

$$[*9.131, (7) \text{ and } (8)]$$

---

### ∗9.61. If $\phi\hat{x}$ and $\psi\hat{x}$ are elementary functions of the same type, there is a function $\phi\hat{x} \vee \psi\hat{x}$.

**Dem.**

By ∗9.14.15, there is an $a$ for which "ψa," and therefore "φa," are significant, and therefore so is "φa ∨ ψa," by the primitive idea of disjunction. Hence the result by ∗9.15.

---

### ∗9.62. If $\phi(\hat{x}, \hat{y})$ and $\psi\hat{z}$ are elementary functions, and the $x$-argument to $\phi$ is of the same type as the argument to $\psi$, there are functions $(y) . \phi(\hat{x}, y) .\vee. \psi\hat{x}$, $(\exists y) . \phi(\hat{x}, y) .\vee. \psi\hat{x}$.

**Dem.**

By ∗9.15, there are propositions $\phi(x, b)$ and $\psi a$, where $x$ and $a$ are of the same type. Hence by ∗9.14 there is a proposition $\phi(a, b)$, and therefore there is a proposition $\phi(a, b) \vee \psi a$, and therefore by ∗9.15 and ∗9.03 there is a proposition $(y) . \phi(a, y) .\vee. \psi a$. Similarly there is a proposition $(\exists y) . \phi(a, y) .\vee. \psi a$. Hence the result by ∗9.15.

---

### ∗9.63. If $\phi(\hat{x}, \hat{y})$, $\psi(\hat{x}, \hat{y})$ are elementary functions of the same type, there are functions $(y) . \phi(\hat{x}, y) .\vee. (z) . \psi(\hat{x}, z)$, etc.

$$[\text{Proof as above}]$$

---

## Conclusion

We have now completed the proof that, in the primitive propositions of ∗1, any one of the propositions that occur may be replaced by $(x) . \phi x$ or $(\exists x) . \phi x$. It follows that all the primitive propositions of ∗1, and therefore all the propositions of ∗2–∗5, hold equally when some or all of the propositions concerned are of one of the forms $(x) . \phi x$, $(\exists x) . \phi x$. By mere repetition of the proofs, the propositions of ∗1–∗5 hold when $p, q, r$ are replaced by propositions containing any number of apparent variables.
