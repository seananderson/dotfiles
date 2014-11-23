.First <- function() {
  options(
    repos = c(CRAN = "http://cran.rstudio.com/"),
    browserNLdisabled = TRUE,
    deparse.max.lines = 2,
    help_type = "html",
    devtools.name = "Sean",
    devtools.desc.author = "Sean C. Anderson <sean@seananderson.ca> [aut, cre]",
    devtools.desc.license = "MIT + file LICENSE")
  options(vimcom.verbose = -1)     
}

if (interactive()) {
  suppressMessages(require(devtools))
}

setHook(packageEvent("grDevices", "onLoad"),
  function(...) grDevices::quartz.options(width = 4.5, height = 3.5,
    pointsize = 10))

options("noaakey" = "NVAYmtEpNQVbQPyXyDfspNECVLwPucdd")

Sys.setenv(PATH = paste(Sys.getenv("PATH"),
    paste0("/usr/texbin:/Users/seananderson/Dropbox/bin:",
      "/Library/Frameworks/GDAL.framework/Programs:",
      "/Library/Frameworks/GEOS.framework/unix/bin:",
      "/Applications/ADMBTerminal.app/admb/bin"), sep=":"))

Sys.setenv(ADMB_HOME="/Applications/ADMBTerminal.app/admb")
