#set.seed(25)
options(digits = 3)

# packages ---------------------------------------------------------------------

suppressMessages(library(tidyverse))
# suppressMessages(library(patchwork))
suppressMessages(library(qqplotr)) # hfst t-toets
suppressMessages(library(caret)) # hfst data splitsen

# knitr chunk options ----------------------------------------------------------

knitr::opts_chunk$set(
  echo = TRUE,
  message = FALSE,
  warning = FALSE,
  #cache = TRUE,
  comment = "#>",
  collapse = TRUE,
  fig.retina = 2,       # Control gebruik dpi
  fig.width = 6,
  fig.pos = "ht",       # positie figuur latex mode
  fig.align = 'center',
  fig.asp = 0.618,      # gulden snede verhouding
  fig.show = "hold",
  out.width = "100%",
  dev = "svg",
  dev.args = list(png = list(type = "cairo-png"))
)

# knit options -----------------------------------------------------------------

options(knitr.kable.NA = "")

# kableExtra options -----------------------------------------------------------

options(kableExtra.html.bsTable = TRUE)

# ggplot2 options
theme_set(theme_bw())

# readr options
options(readr.show_col_types = FALSE)