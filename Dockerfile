FROM rocker/shiny:4.3.1

# Install R packages that are required
RUN R -e "install.packages(c('here', 'shiny', 'shinythemes', 'shinymanager', 'plotly', 'ggplot2', 'DT', 'dplyr', 'gprofiler2', 'rentrez', 'mygene'))"

EXPOSE 3838

COPY source dest

CMD [ "R -e dest/app_long.R" ]