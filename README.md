# dynclasp
tool for determining heuristic parameters for clasp following the dynamic programming on tree decomposition paradigm

dynClasp emerged due to the need of applying the concept of dynamic programming on tree decompositions in a traditional, monolithic approach.
We identify methods in two groups

##Solving by means of Dynamic Programming on Tree decompositions
There are several ways on how to do this. If the goal is to directly use monolithic ways, we already tried to 
generate the whole dynamic programming tables at once (using iterative grounding) and moreover, also tried to 
proceed similary to dynamic programming on tree decompositions, but encodige it a way, which is desired for clasp.

##Guiding traditional methods twoards DP on TDs
dynClasp is the third idea on using information stored in tree decompositions for classical CDCL solvers and counts to this group,
since we apply only guidance and not enforce this paradigm. In the following, we only draw our attention to this group this particular method.

