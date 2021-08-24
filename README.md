An Introduction to R

Rendered book : https://intro2r.com

To build this book you will need to install the following packages into R or Rstudio (just use the `install.packages()` function):
`vioplot`, `reshape2`, `ggplot2`, `patchwork`, `quantreg`, `hexbin`, `GGally`, `ggfortify`, `kableExtra`, `htmltools`, `rmarkdown`, `bookdown`, `xfun`, `knitr`, `rsvg`, `remotes`, `formatR`.

You will also need to install the `icons` package from GitHub and also the download the fontawesome icons using:

`remotes::install_github("mitchelloharawild/icons")`

`icons::download_fontawesome(version = "dev")`

To render the book you can either hit the 'Build' button in RStudio or run the following line of code in the console:

`rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')`