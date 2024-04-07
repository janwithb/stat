library(cluster)
flower
str(flower)
dist=daisy(flower, type=list(asymm=c(1, 3), symm=2, ordratio=7))
str(dist)
dist

# performing MDS
plot(cmdscale(dist))
