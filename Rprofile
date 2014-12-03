.First <- function() {
  options(
    device = "quartz",
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

# Lines added by the Vim-R-plugin command :RpluginConfig (2014-Nov-23 12:15):
if(interactive()){
    if(nchar(Sys.getenv("DISPLAY")) > 1)
        options(editor = 'gvim -f -c "set ft=r"')
    else
        options(editor = 'vim -c "set ft=r"')
    # See ?setOutputColors256 to know how to customize R output colors
    # library(colorout)
    library(setwidth)
    library(vimcom)
    # See R documentation on Vim buffer even if asking for help in R Console:
    if(Sys.getenv("VIM_PANE") != "")
        options(pager = vim.pager)
}
