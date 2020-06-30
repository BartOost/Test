library(dplyr)
install.packages("tidyverse")
library(tidyverse)

a <- 2
b <- 3
a + b

df <- read_csv('data/test_data.csv')

df_nieuw <- df %>%
  mutate(nummer = nummer + 1000)

write.csv(df_nieuw, 'data/test_output.csv', row.names=FALSE)

traction_planning_sections <- read_csv("data/traction_planning_sections.csv")

df_temp <- traction_planning_sections %>%
  # filter(!is.na(actual_departure))
  drop_na(actual_departure) %>%
  # mutate(tijdsverschil = (actual_departure - planned_departure)/60) %>% View()
  mutate(tijdsverschil_minuten = difftime(actual_departure, planned_departure, units="mins")) %>%
  arrange(desc(tijdsverschil_minuten)) %>% view()

  
ggplot(df_temp, aes(x = tijdsverschil_minuten)) + geom_histogram()

df_temp %>%



a <- c(1,2,3,4, NA)

round(mean(a, na.rm=TRUE), 0)

a %>%
  mean(na.rm=TRUE) %>%
  round(0)

