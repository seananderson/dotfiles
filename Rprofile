.First <- function() {
    #require(graphics)
        options(
              repos = c(CRAN = "http://cran.rstudio.com/"),
                  browserNLdisabled = TRUE,
                  deparse.max.lines = 2)
    }

    if (interactive()) {
        suppressMessages(require(devtools))
                  options(vimcom.verbose = 1,
                        vimcom.texerrs = TRUE)
       #suppressMessages(require(vimcom.plus))
       #suppressMessages(require(setwidth))
#       # If you can't install the vimcom.plus package, do:
        #library(vimcom)
    }

setHook(packageEvent("grDevices", "onLoad"),
        function(...) grDevices::quartz.options(width = 4.5, height = 3.5,
                                                pointsize = 10))



Sys.setenv(PATH=paste(Sys.getenv("PATH"),"/usr/texbin",sep=":")) # this adds /usr/texbin to the R path

#from: http://stackoverflow.com/questions/1358003/tricks-to-manage-the-available-memory-in-an-r-session:
# improved list of objects
.ls.objects <- function (pos = 1, pattern, order.by,
                        decreasing=FALSE, head=FALSE, n=5) {
    napply <- function(names, fn) sapply(names, function(x)
                                         fn(get(x, pos = pos)))
    names <- ls(pos = pos, pattern = pattern)
    obj.class <- napply(names, function(x) as.character(class(x))[1])
    obj.mode <- napply(names, mode)
    obj.type <- ifelse(is.na(obj.class), obj.mode, obj.class)
    obj.size <- napply(names, object.size)
    obj.dim <- t(napply(names, function(x)
                        as.numeric(dim(x))[1:2]))
    vec <- is.na(obj.dim)[, 1] & (obj.type != "function")
    obj.dim[vec, 1] <- napply(names, length)[vec]
    out <- data.frame(obj.type, obj.size, obj.dim)
    names(out) <- c("Type", "Size", "Rows", "Columns")
    if (!missing(order.by))
        out <- out[order(out[[order.by]], decreasing=decreasing), ]
    if (head)
        out <- head(out, n)
    out
}
# shorthand
lsos <- function(...) {
    .ls.objects(..., order.by="Size", decreasing=TRUE, head=TRUE)
}

# gelman.par <- function() {
#   par(mar = c(2.75, 2.75, 0.5, 0.5) + 0.1)
# par(mgp = c(2, 0.6, 0)) # title and axis label distances - make them closer
# par(tck = -0.012) # shorten the tick length
# }

# bg.plot <- function(colour = "#00000009") rect(par("usr")[1], par("usr")[3], par("usr")[2], par("usr")[4], col = colour, border = FALSE)

# tufte.axes <- function(col = "grey", lwd = 1) {
#   axis(1, col = col, lwd = lwd)
#   axis(2, col = col, lwd = lwd)
#   box(col = col, lwd = lwd)
# }

# tufte.grid <- function() par(col.axis = "#555555", mar = c(0,0,0,0), oma = c(3, 3, .5, .5), tck = -0.02, mgp = c(2, .5, 0), cex = 0.8)

# if(interactive()){
      # library(colorout)
       #library(setwidth)
       #library(vimcom)
   # }

#gg_color_hue <- function(n) {
# ggplot2 hues
  #hues = seq(15, 375, length=n+1)
  # hues = seq(25, 375, length=n+1)
  #hcl(h=hues, l=65, c=100)[1:n]
#}

options("help_type"="html")
options("devtools.name"="Sean")
options("devtools.cleandoc"=FALSE)
options("devtools.desc.author"= 
  "Sean C. Anderson <sean@seananderson> [aut, cre]")
options("devtools.desc.license"="GPL-3")
