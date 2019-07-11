# EccentricPNwaveform

The following project was done using these codes: https://arxiv.org/abs/1905.08811

OBJECTIVE

To study the convergence of post-Newtonian gravitational waveforms (as a bivariate series) from eccentric black-hole binaries



INTRO

The folder 'old_basic_codes' has older versions of the above codes. It has two kinds of codes (indicated by the file names):

slow codes: Run slowly since no optimation has been done. But they are well commented.
fast codes: Run much faster because of numerous optimations. But they are not well commented.

The slow and the fast codes in the folder perform the same computations in the mathemtical sense and they produce the same 
output (within machine error) given the same input file.

Why make two versions of the code (slow and fast)?: to ensure correctness of the codes.

But for the project we did not use these old codes. We modified the fast old codes (becasue our strategy changed slightly) to arrive at the codes in the directories 'fisher computations' and 'mismatch computations', which we used for the project. So, to understand these uncommented codes, go the corresponding slow codes in the folder 'old_basic_codes' and look
up the slow codes.

The non_astro_catalog folder helps create non_astro_catalog.dat which is an input file to my codes. The codes all have 3 harmonics whereas we considered 6 harmonics for the paper. Extra harmonics can be added to these codes with the help of EccentricPNwaveformConvergence/old_basic_codes/auxiliary_mathematica_notebooks/xi_yunes-appendix.nb.



HOW TO RUN THE CODES

Suppose we want to run fisher_computations/mathematica_sequoia_example/parameter_estimation_NLO.m. Copy this file in your 'home folder' for Mathemtica. Also, copy the file non_astro_catalog.dat to the home folder. Now you can the entire notebook. The same goes for notebooks in match_computations as well. 

You will need to change the line "LaunchKernels[12]; " to "LaunchKernels[n]; " where n is the number of cores/processors you want to devote. 
