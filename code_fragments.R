
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

# ><p style="font-weight:400; font-size:20px">Benthic Biodiversity experiment.</p>
# 	
# 	
# 	><p style="font-weight:400; font-size:40px">Benthic Biodiversity experiment.</p>
# 		><p style="font-weight:400; font-size:32px">Benthic Biodiversity experiment.</p>
# 			><p style="font-weight:400; font-size:28px">Benthic Biodiversity experiment.</p>
# 				><p style="font-weight:400; font-size:24px">Benthic Biodiversity experiment.</p>
# 					><p style="font-weight:400; font-size:20px">Benthic Biodiversity experiment.</p>
# 						><p style="font-weight:400; font-size:16px">Benthic Biodiversity experiment.</p>
# 							><p></p>
							
<div style= "float:left;position: relative; top: 5px;">
	```{r, out.width = "200px", out.extra='style="padding:30px;"', echo = FALSE}
knitr::include_graphics("images/alex.png")
```
</div>
	
	\ 

**Alex Douglas** is a Reader in Biostatistics at the University of Aberdeen and has been teaching (and learning) R for the last 15 years. 

- Web: https://www.abdn.ac.uk/people/a.douglas/
	- Twitter: https://twitter.com/Scedacity
- GitHub: https://github.com/alexd106

\ 

\  

<div style= "float:left;position: relative; top: 5px;">
	```{r, out.width = "200px", out.extra='style="padding:30px;"', echo = FALSE}
knitr::include_graphics("images/deon.png")
```
</div>
	
	\  

**Deon Roos** is a PhD student in applied ecology at the University of Aberdeen researching spatial variation of the temporal kind in population dynamics. He has been using and teaching R for 5 years. 

- Web: https://www.abdn.ac.uk/people/deon.roos
- Twitter: https://twitter.com/DeonRoos88
- GitHub: https://github.com/Deon88

\  

\  

<div style= "float:left;position: relative; top: 5px;">
	```{r, out.width = "200px", out.extra='style="padding:30px;"', echo = FALSE}
knitr::include_graphics("images/ana.png")
```
</div>
	
	\  

**Ana Couto** is a PhD student in Ecology at the University of Aberdeen looking at the ecology and physics of tidal stream habitats. She has been using and teaching R for 7 years. 

- Web: https://www.abdn.ac.uk/people/r01ac17
- Twitter: https://twitter.com/AnaSofiaCouto
- GitHub:  https://github.com/Anofia

\  

\  

<div style= "float:left;position: relative; top: 5px;">
	```{r, out.width = "200px", out.extra='style="padding:30px;"', echo = FALSE}
knitr::include_graphics("images/francesca2.png")
```
</div>
	
	\  

**Francesca Mancini** is an ecological modeller, working with large citizen science datasets and statistical models to derive trends in biodiversity change and investigate its drivers.

- Web: https://FrancescaMancini.github.io
- Twitter: https://twitter.com/frances_mancini
- GitHub:  https://github.com/FrancescaMancini

\  

\  

<div style= "float:left;position: relative; top: 5px;">
	```{r, out.width = "200px", out.extra='style="padding:30px;"', echo = FALSE}
knitr::include_graphics("images/lusseau.png")
```
</div>
	
	\  

**David Lusseau** is a Professor of Marine Sustainability at the Danish Technical University. He's been using R for 15 years and teaching it for 12 years.

- Twitter: https://twitter.com/lusseau
- GitHub:  https://github.com/dlusseau

```{r, html-out, eval=knitr::is_html_output(), echo=FALSE}
df1 %>%
	kable("html", escape = F, col.names = NULL, linesep = "") %>%
      kable_styling()
```

```{r, latex-out, eval=knitr::is_latex_output(), echo=FALSE}
df1 %>%
	mutate_all(linebreak) %>%
      kable("latex", booktabs = T, escape = F, col.names = NULL, linesep = "")
```

knit_table <- function(df){
  if (is_html_output()) {
    df %>%
      kable("html", escape = F, col.names = NULL, linesep = "") %>%
      kable_styling()
  } else {
    df <- data.frame(lapply(df, function(x) {gsub("<br>", "\n", x)}), stringsAsFactors = F)

    df %>%  
      mutate_all(linebreak) %>%
      kable("latex", booktabs = T, escape = F, col.names = NULL, linesep = "")  
  }
}

```{r, html-out, eval=knitr::is_html_output(), echo=FALSE}
df1 %>%
	kable("html", escape = F, col.names = NULL, linesep = "") %>%
      kable_styling()

```

```{r who-are-we, echo=FALSE, warning=FALSE, message=FALSE}
library(dplyr)
library(knitr)
library(kableExtra)

AD <- '**Alex Douglas** is a Reader in Biostatistics at the University of Aberdeen and has been teaching (and learning) R for the last 15 years.<br>- Web: https://www.abdn.ac.uk/people/a.douglas/<br>- Twitter: https://twitter.com/Scedacity<br>- GitHub: https://github.com/alexd106'

DR <- '**Deon Roos** is a PhD student in applied ecology at the University of Aberdeen researching spatial variation of the temporal kind in population dynamics. He has been using and teaching R for 5 years.<br>- Web: https://www.abdn.ac.uk/people/deon.roos<br>- Twitter: https://twitter.com/DeonRoos88<br>- GitHub: https://github.com/Deon88'

AC <- '**Ana Couto** is a PhD student in Ecology at the University of Aberdeen looking at the ecology and physics of tidal stream habitats. She has been using and teaching R for 7 years.<br>- Web: https://www.abdn.ac.uk/people/r01ac17<br>- Twitter: https://twitter.com/AnaSofiaCouto<br>- GitHub: https://github.com/Anofia'

FM <- '**Francesca Mancini** is an ecological modeller, working with large citizen science datasets and statistical models to derive trends in biodiversity change and investigate its drivers.'

DL <- '**David Lusseau** is a Professor of Marine Sustainability at the Danish Technical University. He\'s been using R for 15 years and teaching it for 12 years.<br>- Twitter: https://twitter.com/lusseau<br>- GitHub: https://github.com/dlusseau'

df1 <- data.frame(col1 = c('![](images/alex.png)', '![](images/deon.png)', '![](images/ana.png)', '![](images/francesca2.png)', '![](images/lusseau.png)'), col2 = c(AD, DR, AC, FM, DL))
```

