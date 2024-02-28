last_20_weights = tail(cdc$weight,20)
last_20_weights
plot(cdc$height,cdc$weight)
cor(cdc$height, cdc$weight)
hist(cdc$weight)
hist(cdc$height)   
#Create height.m 
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight *0.454  
bmi <- weight_kg/height_m^2
plot(cdc$height,bmi)
cor(cdc$height,bmi)
sum(bmi>=30)
sum(bmi>=30)/length(bmi)
sum(bmi>=30)/length(bmi)*100
round(sum(bmi>=30)/length(bmi)*100,1)
cdc[567,6]
cdc[1:10,6]
cdc[1:10,]
plot(cdc[1:100, "height"], cdc[1:100,"weight"])
table(c(bmi>=30),cdc$gender)
sum(table(c(bmi>=30),cdc$gender))
inputfile <- "Furin Multiple alignment.fasta"
aln <- read.fasta( inputfile )
file_path <- file.choose()
file.path
inputfile<- file.choose()
aln <- read.fasta (inputfile)
library(bio3d)
inputfile <- "~/Documents/UCSD Grad class/BGGN 213/Furin_Multiple_alignment.fst"
aln <- read.fasta( inputfile )
aln
sim <- conserv(aln)
plot(sim, typ="h", xlab="Alignment position", ylab="Conservation score")
inds <- order(sim, decreasing=TRUE)
head(sim[inds])
positions <- data.frame(pos=1:length(sim),
                        aa=aln$ali[1,],
                        score=sim)

head(positions)
head( positions[inds,] )
aa123(positions[inds,]$aa)[1:3]
library (pheatmap)
ide <- seqidentity(aln)
pheatmap((1-ide))
