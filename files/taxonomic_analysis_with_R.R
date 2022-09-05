#------------ taxonomic analysis with R 
## merged_metagenomes is our phyloseq object  
merged_metagenomes
sample_sums(x = merged_metagenomes)
summary(merged_metagenomes@otu_table@.Data)
deep <- data.frame(Samples = sample_names(merged_metagenomes),
                     Reads = sample_sums(merged_metagenomes))
#### deep contains read counts 
deep

## Plots with the reads count
gcol<-ggplot(data = deep, mapping = aes(x = Samples,y = Reads)) + geom_col()
ggsave(gcol,file="plot_reads.pdf", width = 4, height = 4)


gbackground<-ggplot(data = deep, mapping = aes(x = Samples,y = Reads))
ggsave(gbackground,file="plot_background.pdf", width = 4, height = 4)

######################################################
## Transformation and manipulation of data

summary(merged_metagenomes@tax_table@.Data== "")

### remove genus level
merged_metagenomes <- subset_taxa(merged_metagenomes, Genus != "")
summary(merged_metagenomes@tax_table@.Data== "")

head(merged_metagenomes@otu_table@.Data)

### Relative abundance table
percentages  = transform_sample_counts(merged_metagenomes, function(x) x*100 / sum(x) )
head(percentages@otu_table@.Data)

######################################
## Beta diversity
distanceMethodList
meta.ord <- ordinate(physeq = percentages, method = "NMDS", 
                       distance = "bray")

pdf("plot_ordination.pdf") 
plot_ordination(physeq = percentages, ordination = meta.ord)
dev.off()

##############################################
## Ploting our data

glom <- tax_glom(percentages, taxrank = 'Phylum')
View(glom@tax_table@.Data)
percentages <- psmelt(glom)
str(percentages)

raw <- tax_glom(physeq = merged_metagenomes, taxrank = "Phylum")
raw.data <- psmelt(raw)
str(raw.data)

raw.plot <- ggplot(data=raw.data, aes(x=Sample, y=Abundance, fill=Phylum))+ 
geom_bar(aes(), stat="identity", position="stack")
rel.plot <- ggplot(data=percentages, aes(x=Sample, y=Abundance, fill=Phylum))+ 
  geom_bar(aes(), stat="identity", position="stack")

pdf("plot_abundances.pdf",width = 15, height = 5) 
raw.plot | rel.plot
dev.off()

#----------------------------------------------------------
## Removing rare phyla  

percentages$Phylum <- as.character(percentages$Phylum)
percentages$Phylum[percentages$Abundance < 0.5] <- "Phyla < 0.5% abund."
unique(percentages$Phylum)
rel.plot <- ggplot(data=percentages, aes(x=Sample, y=Abundance, fill=Phylum))+ 
  geom_bar(aes(), stat="identity", position="stack")

pdf("plot_more_abundant.pdf",width = 15, height = 5) 
raw.plot | rel.plot
dev.off()

merged_metagenomes <- subset_taxa(merged_metagenomes, Kingdom == "Bacteria")
cyanos <- subset_taxa(merged_metagenomes, Phylum == "Cyanobacteria")
unique(cyanos@tax_table@.Data[,2])
cyanos  = transform_sample_counts(cyanos, function(x) x*100 / sum(x) )
glom <- tax_glom(cyanos, taxrank = "Genus")
g.cyanos <- psmelt(glom)
g.cyanos$Genus[g.cyanos$Abundance < 10] <- "Genera < 10.0 abund"
p.cyanos <- ggplot(data=g.cyanos, aes(x=Sample, y=Abundance, fill=Genus))+ 
  geom_bar(aes(), stat="identity", position="stack")

pdf("plot_cyanos.pdf",width = 10, height = 5) 
p.cyanos
dev.off()
