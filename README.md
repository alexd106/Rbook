An Introduction to R

Rendered book : https://intro2r.com

To build this book you will first need to clone this repository to your local computer (hit the green 'code' button above to reveal the repository URL). You will also need to install the following packages into R or Rstudio on your computer: 

`vioplot`, `reshape2`, `ggplot2`, `patchwork`, `quantreg`, `hexbin`, `GGally`, `ggfortify`, `kableExtra`, `htmltools`, `rmarkdown`, `bookdown`, `xfun`, `knitr`, `rsvg`, `remotes`, `formatR`, `here`.

You can do this using the following code:

`install.packages(c('vioplot', 'reshape2', 'ggplot2', 'patchwork', 'quantreg', 'hexbin', 'GGally', 'ggfortify', 'kableExtra', 'htmltools', 'rmarkdown', 'bookdown', 'xfun', 'knitr', 'rsvg', 'remotes', 'formatR', 'here'))`

You will also need to install the `icons` package from GitHub and also the download the fontawesome icons using:

`remotes::install_github("mitchelloharawild/icons")`

`icons::download_fontawesome(version = "dev")`

To render the book you can either hit the 'Build Book' button (in the build tab) in RStudio or run the following line of code in the console:

`rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')`

If you've just installed the bookdown package then you may need to restart RStudio for the 'Build' tab to appear.