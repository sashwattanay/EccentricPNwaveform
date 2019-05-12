# EccentricPNwaveform
Study the convergence of post-Newtonian gravitational waveforms (as a bivariate series) from eccentric black-hole binaries





The folder 'old_basic_codes' has older versions of the above codes. It has two kinds of codes (indicated by the file names):

slow codes: Run slowly since no optimation has been done. But they are well commented.
fast codes: Run much faster because of numerous optimations. But they are not well commented.

The slow and the fast codes in the folder perform the same computations in the mathemtical sense and they produce the same 
output (within machine error) given the same input file.

Why make two versions of the code (slow and fast)?: to ensure correctness of the codes.

But for the project we did not use these old codes. We modified the fast old codes (becasue our strategy changed slightly and
fast codes run fast) to arrive at the codes in 'fisher computations' and 'mismatch computations', which we used for the project. So, to understand these uncommented codes, go the corresponding slow codes in the folder 'old_basic_codes' and look
up the slow codes.

The non_astro_catalog folder helps create non_astro_catalog.dat which is an input file to my codes.
