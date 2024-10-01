library(palmerpenguins)
library(dplyr)
 penguins<- penguins
head(penguins) 

library(dplyr)
library(palmerpenguins)

#### Revisit the penguins data ####

penguins <- penguins

head(penguins)

#### Write functions to convert metric to imperial ####
#39.1 mm in inches
39.1*0.03937008

mm_to_inches <- function (mm_value) {
  inches_value <- mm_value*0.03937008
return(inches_value)
  
  }



g_to_lbs <- function(value_in_g) {
  
  value_in_lbs <- value_in_g * 0.002204623
  
  return(value_in_lbs)
}

penguins_imperial <- penguins |>
  mutate(across(ends_with("mm"), mm_to_inches, .names = "{.col}_in"),
         across(ends_with("g"), g_to_lbs, .names = "{.col}_lb"))

#### Create a function to return penguins data in metric or imperial ####

get_penguins_data <- function(units = "metric") {
  
  if(units == "metric") {
    return(penguins)
  } else if(units == "imperial") {
    
    penguins_imperial <- penguins |>
      mutate(across(ends_with("mm"), mm_to_inches, .names = "{.col}_in"),
             across(ends_with("g"), g_to_lbs, .names = "{.col}_lb"))
    
    return(penguins_imperial)
  } else {
    stop("Please specify units as either 'metric' or 'imperial'!")
  }
  
}

get_penguins_data("metric")

get_penguins_data("imperial")

get_penguins_data("klingon")