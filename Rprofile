.First <- function() {
  options(
    repos = c(CRAN = "https://cran.rstudio.com/"),
    browserNLdisabled = TRUE,
    Ncpus = round(parallel::detectCores()/2), 
    deparse.max.lines = 2
  )
}

if (interactive()) {
  suppressMessages(require(devtools))
  suppressMessages(require(testthat))
  suppressMessages(require(usethis))
  suppressMessages(require(lintr))
}

Sys.setenv(PATH = paste(Sys.getenv("PATH"),
  "/Users/seananderson/Dropbox/bin", sep = ":"))

## blogdown:
## https://bookdown.org/yihui/blogdown/global-options.html
options(
  blogdown.author = "Sean Anderson"
)

if (interactive() && requireNamespace("rsthemes", quietly = TRUE)) {
  # Set preferred themes if not handled elsewhere..
  rsthemes::set_theme_light("Flat White {rsthemes}")  # light theme
  rsthemes::set_theme_dark("Nord Polar Night Aurora {rsthemes}") # dark theme
  rsthemes::set_theme_favorite(c(
    "base16 Materia {rsthemes}",
    "base16 Gruvbox dark, hard {rsthemes}",
    "base16 Eighties {rsthemes}",
    "base16 Gruvbox dark, pale {rsthemes}",
    "base16 Nord {rsthemes}",
    "base16 Ocean {rsthemes}",
    "base16 OceanicNext {rsthemes}",
    "base16 OneDark {rsthemes}",
    "base16 Solarized Dark {rsthemes}",
    "base16 Tomorrow Night {rsthemes}",
    "Oceanic Plus {rsthemes}",
    "One Dark {rsthemes}",
    "One Light {rsthemes}",
    "Solarized Dark {rsthemes}",
    "Flat White {rsthemes}",
    "Nord Polar Night Aurora {rsthemes}",
    "Textmate (default)"
  ))
  #rsthemes::use_theme_dark()

# # Whenever the R session restarts inside RStudio...
#setHook("rstudio.sessionInit", function(isNewSession) {
#  rsthemes::use_theme_dark()
#}, action = "append")


#  # Whenever the R session restarts inside RStudio...
#  setHook("rstudio.sessionInit", function(isNewSession) {
#    # Automatically choose the correct theme based on time of day
#    rsthemes::use_theme_auto(dark_start = "18:00", dark_end = "6:00")
#  }, action = "append")
}

options(pbs.uid="AndersonSe")
options(pbs.pwd="Anders0nS3")
options(pbs.ip="10.114.52.8")
options(pbs.sqldriver="ODBC Driver 17 for SQL Server")

# options(
#   warnPartialMatchArgs = TRUE,
#   warnPartialMatchDollar = TRUE,
#   warnPartialMatchAttr = TRUE
# )

######## TMB - setup RStudio
setHook(packageEvent("TMB", "onLoad"),
        function(...) {
            if("tools:rstudio" %in% search()) {
                tmb.env <- asNamespace("TMB")
                compile.orig <- tmb.env$compile
                unlockBinding("compile", tmb.env)
                ## Rstudio handle compilation errors:
                rs.env <- as.environment("tools:rstudio")
                tmb.env$compile <- function(file,...) {
                    .Call("rs_sourceCppOnBuild",
                          file, FALSE, FALSE)
                    status <- try( compile.orig(file, ...) )
                    succeeded <- (status == 0)
                    .Call("rs_sourceCppOnBuildComplete",
                          succeeded, "")
                    if(!succeeded) stop("Compilation failed")
                    status
                }
                ## Bind "sourceCpp" button to TMB compile
                rcpp.env <- asNamespace("Rcpp")
                unlockBinding("sourceCpp", rcpp.env)
                rcpp.env$sourceCpp <- tmb.env$compile
                ## Auto completion needs TMB and Eigen on system includes
                if (.Platform$OS.type=="windows") {
                  ## Overload system.file
                  system.file <- function(...){
                    ans <- base::system.file(...)
                    chartr("\\", "/", shortPathName(ans))
                  }
                }
                definc <- Sys.getenv("CPLUS_INCLUDE_PATH")
                tmbinc <- system.file("include", package="TMB")
                eiginc <- system.file("include", package="RcppEigen")
                inc <- c(definc, tmbinc, eiginc)
                inc <- paste(inc[inc != ""], collapse=.Platform$path.sep)
                Sys.setenv(CPLUS_INCLUDE_PATH = inc)
            }
        } )
