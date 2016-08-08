# dynclasp
tool for determining heuristic parameters for clasp following the dynamic programming on tree decomposition paradigm

dynClasp emerged due to the need of applying the concept of dynamic programming on tree decompositions in a traditional, monolithic approach.
We only tackle graph problems here and identify our methods in two groups.

##Solving by means of Dynamic Programming on Tree decompositions
There are several ways on how to do this. If the goal is to directly use monolithic ways, we already tried to 
generate the whole dynamic programming tables at once (using iterative grounding) and moreover, also tried to 
proceed similary to dynamic programming on tree decompositions, but encode it in a way, which is desired for clasp.

##Guiding traditional methods twoards DP on TDs
dynClasp is the third idea on using information stored in tree decompositions for classical CDCL solvers and counts to this group,
since we apply only guidance and do not enforce this paradigm. In the following, we only draw our attention to this group and this particular method.

We quickly outline the method in the following.
Basically the idea is to add additional structural information of the input graph to the ASP solver clasp,
such that that this solver is enabled to exploit this information, which otherwise gets at least partly lost during the grounding process.

## Requirements
In order to use this set of scripts, the following is required:
[htd](https://github.com/mabseher/htd)
[D-FLAT](https://github.com/bbliem/dflat)
[gringo](http://potassco.sourceforge.net/) and
[clasp] (http://potassco.sourceforge.net/)

## The test scripts

### dynamic_programming_test.sh
Our script for guiding clasp towards dynamic programming on tree decompositions via exploiting the input structure of the input instance. 

### variable_ordering_test.sh
Tries different variable orderings such that we can be sure that the previous script actually has an advantage and is not more than a simple variable ordering. 

### monolithic_test.sh
Performs the monolithic test with reasonable default parameters such that we can compare the performance of the scripts.

### dynamic_programming_ground_test.sh
This script was only added for completeness and was used once, but the results were not that outstanding and one has to admit that,
the structure of the input graph gets partly lost during grounding and moreover, the structure of the ground program is the one which
is available to clasp. This circumstance once more stresses, that adding the input graph structure indeed adds additional value to clasp.

## How to run the scripts
The scripts from examples can directly run and are designed to run all the files in directory examples/input using the encodings folder. 

## Our hopes
The main idea is that the additional strucutural information passed to clasp provides improved solving potential.

## The troubles
At the moment the runtimes are quite deviating, which on the one hand is due to the computed tree decompositions and the fact that
different tree decompositions are well-suited for different situations. We are still believing in this potential and experimenting
in the future. In order to publish the results, however, we plan on finding ways to cope with these deviations.
For more details have a look at presentation_potsdam.pdf.


