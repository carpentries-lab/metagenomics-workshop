library("phyloseq")
library("ggplot2")
library("readr")
library("patchwork")

setwd("~/dc_workshop/taxonomy/")

merged_metagenomes <- import_biom("cuatroc.biom")
class(merged_metagenomes)

View(merged_metagenomes@tax_table@.Data)

merged_metagenomes@tax_table@.Data <- substring(merged_metagenomes@tax_table@.Data, 4)
colnames(merged_metagenomes@tax_table@.Data)<- c("Kingdom", "Phylum", "Class", "Order", "Family", "Genus", "Species")
unique(merged_metagenomes@tax_table@.Data[,"Phylum"])

sum(merged_metagenomes@tax_table@.Data[,"Phylum"] == "Firmicutes")
merged_metagenomes <- subset_taxa(merged_metagenomes, Kingdom == "Bacteria")
merged_metagenomes

sample_sums(merged_metagenomes)
summary(merged_metagenomes@otu_table@.Data)

#open a pdf to save the plot
pdf("plot_richness.pdf") 
plot_richness(physeq = merged_metagenomes, 
              measures = c("Observed","Chao1","Shannon")) 
# Close the pdf file
dev.off() 

## Exercises 
pdf("plot_richness_title.pdf") 
plot_richness(physeq = merged_metagenomes, 
                  title = "Alpha diversity indexes for both samples in Cuatro Cienegas",
                  measures = c("Observed","Chao1","Shannon"))
dev.off() 
#_________________________________

pdf("plot_richness_horizontal.pdf") 
plot_richness(physeq = merged_metagenomes, 
                  title = "Alpha diversity indexes for both samples in Cuatro Cienegas",
                  measures = c("Observed","Chao1","Shannon"),
                  nrow=3)
dev.off() 

pdf("plot_richness_sorted.pdf") 
plot_richness(physeq = merged_metagenomes, 
                  title = "Alpha diversity indexes for both samples in Cuatro Cienegas",
                  measures = c("Observed","Chao1","Shannon"),
                  sortby = "Shannon") 
dev.off() 

