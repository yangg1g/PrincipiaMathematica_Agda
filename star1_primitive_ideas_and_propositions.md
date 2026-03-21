# ∗1. Primitive Ideas and Propositions

## Primitive Ideas

**(1) Elementary propositions.** An "elementary" proposition is one which does not involve any variables, i.e. one which does not involve such words as "all," "some," "the" or equivalents. In the primitive propositions of the present number, and in the deductions in ∗2–∗5, the letters $p, q, r, s$ denote elementary propositions.

**(2) Elementary propositional functions.** An "elementary propositional function" is an expression containing an undetermined constituent (a variable), such that when the variable is assigned a value, the result is an elementary proposition. E.g. if $p$ is an undetermined elementary proposition, "not-$p$" is an elementary propositional function.

**(3) Assertion.** If $p$ is a proposition, $p$ by itself stands for the unasserted proposition, while the asserted proposition is designated by

$$\vdash . p$$

The sign "⊢" is called the assertion-sign; it may be read "it is true that." The dots after the assertion-sign indicate its range.

**(4) Assertion of a propositional function.** When we assert $\phi x$ leaving $x$ undetermined, we are asserting an ambiguous value of our function. This is only legitimate if, however the ambiguity may be determined, the result will be true.

**(5) Negation.** If $p$ is any proposition, "not-$p$," or "$p$ is false," is represented by $\sim p$.

**(6) Disjunction.** If $p$ and $q$ are any propositions, "$p$ or $q$" (where the alternatives are not mutually exclusive) is represented by

$$p \vee q$$

## Definition of Implication

The essential property we require of implication is: "What is implied by a true proposition is true." Hence "$p$ implies $q$" is defined to mean: "Either $p$ is false or $q$ is true."

$$*1.01. \quad p \supset q \;.\;=\;.\; \sim p \vee q \qquad \text{Df}$$

## Primitive Propositions

$$*1.1. \quad \text{Anything implied by a true elementary proposition is true. \;\; Pp}$$

$$*1.11. \quad \text{When } \phi x \text{ can be asserted, where } x \text{ is a real variable, and } \phi x \supset \psi x$$
$$\text{can be asserted, where } x \text{ is a real variable, then } \psi x \text{ can be asserted,}$$
$$\text{where } x \text{ is a real variable. \;\; Pp}$$

This principle is also to be assumed for functions of several variables. It is called the "axiom of identification of type."

$$*1.2. \quad \vdash :\; p \vee p \;.\supset.\; p \qquad \text{Pp}$$

"If either $p$ is true or $p$ is true, then $p$ is true." — the **principle of tautology** (Taut).

$$*1.3. \quad \vdash :\; q \;.\supset.\; p \vee q \qquad \text{Pp}$$

"If $q$ is true, then '$p$ or $q$' is true." — the **principle of addition** (Add).

$$*1.4. \quad \vdash :\; p \vee q \;.\supset.\; q \vee p \qquad \text{Pp}$$

"'$p$ or $q$' implies '$q$ or $p$.'" — the **principle of permutation** (Perm).

$$*1.5. \quad \vdash :\; p \vee (q \vee r) \;.\supset.\; q \vee (p \vee r) \qquad \text{Pp}$$

"If either $p$ is true, or '$q$ or $r$' is true, then either $q$ is true, or '$p$ or $r$' is true." — the **associative principle** (Assoc).

$$*1.6. \quad \vdash :\; q \supset r \;.\supset:\; p \vee q \;.\supset.\; p \vee r \qquad \text{Pp}$$

"If $q$ implies $r$, then '$p$ or $q$' implies '$p$ or $r$.'" — the **principle of summation** (Sum).

$$*1.7. \quad \text{If } p \text{ is an elementary proposition, } \sim p \text{ is an elementary proposition. \;\; Pp}$$

$$*1.71. \quad \text{If } p \text{ and } q \text{ are elementary propositions, } p \vee q \text{ is an elementary proposition. \;\; Pp}$$

$$*1.72. \quad \text{If } \phi p \text{ and } \psi p \text{ are elementary propositional functions which take}$$
$$\text{elementary propositions as arguments, } \phi p \vee \psi p \text{ is an elementary}$$
$$\text{propositional function. \;\; Pp}$$

This is the "axiom of identification of real variables." It applies also to functions of two or more variables.
