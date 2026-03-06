# Load libraries
library(ggplot2)
library(dplyr)
library(data.table)

# set path
setwd("/Users/amos/Documents/repos/wellcome-2026-rgi-bwt/scripts")

#################################################################################

# load all tab-delimited files located in data directory
files <- list.files(path = "./data/", pattern = ".tsv" , full.names=TRUE)
temp <- lapply(files, read.csv, sep="\t")
data <- rbindlist(temp)

# heatmap
ggplot(data, aes(x = Sample, y = Gene, fill = Status)) +
  geom_tile(color = "white") +
  scale_fill_manual(values = c(
    "Both" = "#1b9e77",
    "RGI_only" = "#d95f02",
    "Partial" = "#7570b3"
  )) +
  theme_minimal(base_size = 17) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    panel.grid = element_blank(),
    legend.spacing.y = unit(0.05, 'cm'),
    legend.spacing.x = unit(0.05, 'cm'),
    plot.title = element_text(hjust = 0.5)
  ) +
  labs(
    title = "AMR Gene Detection Heatmap",
    x = "Sample",
    y = "Gene",
    fill = "Status"
  )

# save file
ggsave("rgibwt-amr-plus-plus-heatmap-merged.pdf", width = 18, height = 20, dpi = 300)
