
library(googledrive)
library(readr)
library(ggplot2)
library(googlesheets4)

#Running code for histogram

#Authenticating google sheets
#gs4_auth()

df <- read_sheet("https://docs.google.com/spreadsheets/d/19evPgUDkN61lB7XZhChOqTLoCXPlkTSfM-RNBQDqL7E/edit?usp=sharing")

#Plotting distribution of Hours of Sleep Last Night
ggplot(df, aes(x = `Hours of Sleep Last Night`)) +
  geom_histogram(
    bins = 20,
    fill = "#4C72B0",
    color = "white"
  ) +
  labs(
    title = "Distribution of Hours of Sleep Last Night",
    x = "Hours of Sleep",
    y = "Count"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 20, face = "bold"),
    axis.title.x = element_text(size = 25),
    axis.title.y = element_text(size = 25),
    axis.text.x  = element_text(size = 14),
    axis.text.y  = element_text(size = 14)
  )
