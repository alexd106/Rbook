
# check current version of R on CRAN

checkRversion <- function(){
	x <- readLines("http://cran.r-project.org/sources.html")
	# the version number is in the next line of 'The latest release'
	rls <- x[grep("latest release", x) + 1L]
	newver <- gsub("(.*R-|\\.tar\\.gz.*)", "", rls)
	return(newver)
}


	