#Monthly US Unemployment Rates
## data set unemp.csv with means and standard deviations for each state
## k-means clustering on 2 dimensions namely mean and stddev

## read the data
unemployedUS <- read.csv("~/unemp.csv")
unemployedUS[1:3,]
set.seed(1)
grpunemployedUS <- kmeans(unemployedUS[,c("mean","stddev")], centers=3, nstart=10)

## list of cluster assignments
o=order(grpunemployedUS$cluster)
data.frame(unemployedUS$state[o],grpunemployedUS$cluster[o])
plot(unemployedUS$mean,unemployedUS$stddev,type="n",xlab="mean", ylab="stddev")
text(x=unemployedUS$mean,y=unemployedUS$stddev,labels=unemployedUS$state, col=grpunemployedUS$cluster+1)

