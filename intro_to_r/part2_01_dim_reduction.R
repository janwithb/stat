X = rbind(c(-1.64,-0.4),c(-1.84,-0.9),c(-0.84,0.1),c(2.16,0.1),c(2.16,1.1))
par(pty="s")
plot(X,xlim = c(-2.5,2.5), ylim = c(-2.5,2.5))
colMeans(X) #centered

co = cov(X)
eig = eigen(co)
U = eig$vectors
U
Z = X %*% U
cov(Z) #diagonal is same as above, no offdiagonal elements 
points(Z, col='blue')
points(-Z, col='red', pch='+')

#comparison with prcomp
prcomp(X)
sqrt(eig$values)
