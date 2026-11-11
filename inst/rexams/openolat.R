library(exams)

oodir <- "."
oldname <- "mistakes"
newname <- "mannwhitney1"

# R exams does not read the YAML parameters of the Rmd files
LANGUAGE <<- "de"

myexam <- list(
  mannwhitney1="mannwhitney1_de.Rmd",
  mannwhitney2="mannwhitney2_de.Rmd",
  mannwhitney3="mannwhitney3_de.Rmd",
  mannwhitney4="mannwhitney4_de.Rmd",
  mannwhitney5="mannwhitney5_de.Rmd",
  mannwhitney6="mannwhitney6_de.Rmd"
)

exams2openolat(myexam,
               dir=oodir, name=oldname, 
               edir=system.file("rexams", package="mistakes"),
               solutionswitch=TRUE)

oldzip <- normalizePath(file.path(oodir, sprintf("%s.zip", oldname)), winslash="/")
newzip <- normalizePath(file.path(oodir, sprintf("%s.zip", newname)), winslash="/")

fix_feedback(oldzip, newzip)


library(exams2forms)
exams2webquiz(
  "lqnorm.Rmd", 
  dir=".",
  name="lqnorm", 
  edir=system.file("rexams", package="mistakes"))

exams2webquiz(
  "ipnorm.Rmd", 
  dir=".",
  name="ipnorm", 
  edir=system.file("rexams", package="mistakes"))

exams2webquiz(
  "lpnorm.Rmd", 
  dir=".",
  name="lpnorm", 
  edir=system.file("rexams", package="mistakes"))

exams2webquiz(
  "upnorm.Rmd", 
  dir=".",
  name="upnorm", 
  edir=system.file("rexams", package="mistakes"))

exams2webquiz(
  "tratio.Rmd", 
  dir=".",
  name="tratio", 
  edir=system.file("rexams", package="mistakes"))

exams2webquiz(
  "pvalue.Rmd", 
  dir=".",
  name="pvalue", 
  edir=system.file("rexams", package="mistakes"))
