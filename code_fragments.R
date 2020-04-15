
# ```{r fig.align='center', echo=FALSE, out.width="50%", out.height="50%"}
# knitr::include_graphics('images/rbook_cover3.png', dpi = NA)
# ```


# options(
#	htmltools.dir.version = FALSE, formatR.indent = 2,
#	width = 55, digits = 4, warnPartialMatchAttr = FALSE, warnPartialMatchDollar = FALSE)


# ```{r, include=FALSE}
# library(knitr)
# library(stringr)
# knitr::opts_chunk$set(message=FALSE, warning=FALSE, eval=TRUE, echo=FALSE)
# suppressPackageStartupMessages(library(dplyr))
# suppressPackageStartupMessages(library(stringr))
# source('reveal.R')
# ```


# ```{r setup, echo=FALSE, message=FALSE, include=FALSE, warning=FALSE} 
# ## CHECK COMPILATION TYPE 
# out_type <- knitr::opts_knit$get("rmarkdown.pandoc.to") 
# ```
# 
# Then in your code, all you need is
# 
# ```{r chunk_name, eval = (out_type=="epub3"), echo=FALSE, results='asis'} 
# ```

# ````
# `r ''````{r,}
# 1 + 1
# 2 + 2
# ```
# ````

