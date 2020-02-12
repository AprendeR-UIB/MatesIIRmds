F=function(x){
  FF=as.vector(table(X))
  X2=sum((FF-Esp)^2/Esp)
  
}

set.seed(1)
X2sim=replicate(10000,sum((as.vector(table(sample(0:9,211,rep=TRUE)))-21.1)^2/21.1))
length(which(X2sim>=20.23))/10000


valors=c(5.84,4.57,1.34,3.58,1.54,2.25)
valors=sort(valors)
plot(c(1,valors,6),c(0,(0:5)/5,1),type="s", xlab="",ylab="",lwd=1.5)
curve(pnorm(x,3,1.5),col="red",lwd=1.5,add=TRUE)
legend("topleft",col=c("black","red"),lty=c(1,1),legend=c(expression(F[6]),"N(3,1.5)"),cex=0.7)œ