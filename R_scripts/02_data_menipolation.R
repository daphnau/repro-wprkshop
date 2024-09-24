install.packages("dplyr")
install.packages("tidyr")
install.packages("palmerpenguins")

penguin
library(palmerpenguins)
library(ggplot2)
library(dplyr)
library(tidyr)

write.csv(penguins_data,
          "data/penguins.csv",
          row.names = FALSE)
###