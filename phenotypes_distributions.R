# importing the phenotype file
phenotypes <- read.table(file = "/home/tom_stamour/Labo_Belzile/QS13073/SNC_assay/qs13073_FI_values_byBucket_and_byGrandAvrg.txt", header = TRUE)
phenotypes <- phenotypes[-(184:190), ]

# loading the package ggplot2
library(ggplot2)

# producing Female Index distribution charts
ggplot(data = phenotypes, aes(y = fi_by_bucket, x = "")) +
  geom_jitter()

ggplot(data = phenotypes, aes(x = fi_by_bucket)) +
  geom_histogram(bins = 22) +
  geom_density()

####
phenotypes <- read.table(file = "~/Labo_Belzile/QS13073/SNC_assay/FIvalues_asInBIPfile2.txt", header = T, sep = "\t")

p <- ggplot(data = phenotypes, aes(x = fi_by_bucket)) +
  geom_histogram(bins = 22, boundary = 0, fill = "white", color = "black") +
  theme_bw() +
  labs(x = "FI (%)", y = "Count", title = "Distribution of FI (%) values for population QS13073") +
  #geom_text(y = 14.3, x = 1.8, label = "PI 507354", angle = 90) +
  geom_text(y = 12.8, x = 12, label = "PI 507354") +
  geom_point(x = 1.447, y = 12.8, color = "blue") +
  #geom_text(y = 22, x = 76.8, label = "S12-A5", angle = 90) +
  geom_text(y = 20.8, x = 68.3, label = "S12-A5") +
  geom_point(x = 77.746, y = 20.8, color = "red")

ggsave(filename = "Distribution of FI values for population QS13073 AsInBIPfile", plot = p, device = "pdf", path = "~/Labo_Belzile/QS13073/SNC_assay/")
