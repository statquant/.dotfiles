cat('Running .Rprofile\n')

# 2017-07-02 from nvimr plugin 
if(Sys.getenv("NVIMR_TMPDIR") == ""){
   options(defaultPackages = c("utils", "grDevices", "graphics", "stats", "methods"))
} else {
   options(defaultPackages = c("utils", "grDevices", "graphics", "stats", "methods", "nvimcom"))
}

# Lines added by the Vim-R-plugin command :RpluginConfig (2014-Feb-16 18:42):
if(interactive()){
    if(nchar(Sys.getenv("DISPLAY")) > 1)
        options(editor = 'gvim -f -c "set ft=r"')
    else
        options(editor = 'vim -c "set ft=r"')
    library(colorout)
    if(Sys.getenv("TERM") != "linux" && Sys.getenv("TERM") != ""){
        # Choose the colors for R output among 256 options.
        # You should run show256Colors() and help(setOutputColors256) to
        # know how to change the colors according to your taste:
        setOutputColors256(verbose = FALSE)
    }
    #library(setwidth)
	library(utils)
	sessionInfo()
}

# 2017-12-16 This shit never works
#.Last <- function(){
	#installedSources <- file.path(tempdir(),'downloaded_packages')
	#packages <- list.files(installedSources, full.names=TRUE)
	#if(length(packages)>0){
		#copyPackage <- function(package){
			#cat('source',package,'will be copied to',Sys.getenv('R_SOURCES_USER'),'\n')
			#file.copy(packages, to=Sys.getenv('R_SOURCES_USER'))
		#}
		#success <- sapply(packages, FUN=copyPackage)
		#success <- stack(success)
		#colnames(success) <- c('successfullt copied','package')
		#return(success)
	#}
#}

#' ne marche pas tres bien
generate_base_lib_tags <- function()
{
	.etagsfile <- tempfile()
	utils::rtags(path = "/usr/lib64/R/library", recursive = TRUE, ofile = ".etagsfile")
	nvimcom::etags2ctags(".etagsfile", "~/.rtags/base_pkg.ctags")
	rm(list = ".etagsfile")
}
