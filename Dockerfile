FROM rocker/shiny-verse:3.6.2

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/rsettlag" \
      maintainer="Robert Settlage <rsettlag@vt.edu>"
## helpful read: https://divingintogeneticsandgenomics.rbind.io/post/run-rstudio-server-with-singularity-on-hpc/


RUN Rscript -e "install.packages(Ncpus=6,c('shinythemes','EcoHydRology'),lib='/usr/local/lib/R/site-library',dep=TRUE)"
