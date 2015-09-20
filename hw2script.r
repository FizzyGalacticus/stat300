#Read in data for problem #48
data = read.table("0148.txt", sep=",", header=TRUE)

#Set variables to make life easier...
endotoxin = data$endotoxin
u1 = data[ grep("U1", data$Urban.Farm), ]$endotoxin
u2 = data[ grep("U2", data$Urban.Farm), ]$endotoxin
f1 = data[ grep("F1", data$Urban.Farm), ]$endotoxin
f2 = data[ grep("F2", data$Urban.Farm), ]$endotoxin
u = data[ grep("U", data$Urban.Farm), ]$endotoxin
f = data[ grep("F", data$Urban.Farm), ]$endotoxin

#Generate box plot
boxplot(endotoxin, horizontal=TRUE, range=max(endotoxin), xlab="Endotoxin Levels")

#Calculate standard deviations
sds = c(sd(u1),sd(u2),sd(f1),sd(f2),sd(u),sd(f),sd(endotoxin))

#Calculate range
ranges = c(max(u1)-min(u1),max(u2)-min(u2),max(f1)-min(f1),max(f2)-min(f2),max(u)-min(u),max(f)-min(f),max(endotoxin)-min(endotoxin))

#Calculate IQR
IQRs = c(IQR(u1),IQR(u2),IQR(f1),IQR(f2),IQR(u),IQR(f),IQR(endotoxin))

#Calculate variance
vars = c(var(u1),var(u2),var(f1),var(f2),var(u),var(f),var(endotoxin))