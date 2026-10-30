#Step 1. Organize your files in RStudio
## Create GitHub project folders
dir.create("~/WSU/Enzyme_Activity_Analysis",
           recursive = TRUE,
           showWarnings = FALSE)

project <- "~/WSU/Enzyme_Activity_Analysis"

dir.create(file.path(project, "data"),
           showWarnings = FALSE)

dir.create(file.path(project, "scripts"),
           showWarnings = FALSE)

dir.create(file.path(project, "results"),
           showWarnings = FALSE)

dir.create(file.path(project, "figures"),
           showWarnings = FALSE)


#Step 2. Export your RStudio data and results
Run the following code to save your current R objects.

# Original dataset
write.csv(
  mydata,
  file.path(project, "data", "enzyme_data.csv"),
  row.names = FALSE
)

# Mean and standard error
write.csv(
  enzyme_summary,
  file.path(project, "results", "enzyme_summary.csv"),
  row.names = FALSE
)

# ANOVA results
write.csv(
  anova_table,
  file.path(project, "results", "ANOVA_results.csv"),
  row.names = FALSE
)

# Tukey HSD results
write.csv(
  tukey_table,
  file.path(project, "results", "Tukey_results.csv"),
  row.names = FALSE
)


#Step 3. Export your figures

# Combined enzyme graph
ggsave(
  file.path(project, "figures", "All_Enzymes.png"),
  plot = p_all,
  width = 12,
  height = 6,
  dpi = 600
)

# Separate group figures
plots <- list(
  Black = p_black,
  Blue = p_blue,
  Green = p_green
)

for (group in names(plots)) {
  ggsave(
    file.path(project, "figures",
              paste0(group, "_Enzymes.png")),
    plot = plots[[group]],
    width = 10,
    height = 6,
    dpi = 600
  )
}

#Save your R script


