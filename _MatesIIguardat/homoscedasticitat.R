x=rnorm(10,0,0.5)
y=rnorm(10,0.5,0.5)
z=rnorm(10,0,2)
plot(rep(3,10),z,pch=17,xlim=c(0,4),col="blue",xlab="",ylab="")
points(rep(2,10),y,pch=18,col="red")
points(rep(1,10),x,pch=19)

curve(dnorm(x,0,0.5),xlim=c(-3,3),col="black")
curve(dnorm(x,0.5,0.5),col="red",add=TRUE)
curve(dnorm(x,0,2),col="blue",add=TRUE)
legend("topleft",legend=c("sd=0.5","sd=0.5","sd=3"),
       lty=c(1,1,1),col=c("black","red","blue"),cex=0.7)
