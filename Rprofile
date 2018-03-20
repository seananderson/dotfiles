.First <- function() {
  options(
    repos = c(CRAN = "https://cran.rstudio.com/"),
    browserNLdisabled = TRUE,
    Ncpus = parallel::detectCores() - 2L,
    deparse.max.lines = 2)
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
