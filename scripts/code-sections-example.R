
## This script shows an example of using comments to create a document outline

# load packages -----------------------------------------------------------

library(tidyverse)


# read data ---------------------------------------------------------------

data <- read_xl("data.csv")


# plot data --------------------------------------------------------------

ggplot(data) +
  geom_point(aes(x, y))
