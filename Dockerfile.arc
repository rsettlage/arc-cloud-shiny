FROM rocker/shiny-verse:3.6.1

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/rsettlag" \
      maintainer="Robert Settlage <rsettlag@vt.edu>"

RUN Rscript -e "install.packages(Ncpus=6,c('shinythemes','kableExtra','knitr','DT','ggplot2','shinydashboard','data.table'),lib='/usr/local/lib/R/site-library',dep=TRUE)"
