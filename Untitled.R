y=0:30
plot(y,dbinom(y,50,0.3),pch=20,xlab="",ylab="", col="red",
     main="B(50,0.3) i N(50*0.3,sqrt(50*0.3*(1-0.3)))")
curve(dnorm(x,50*0.3,sqrt(50*0.3*(1-0.3))),col="blue",add=TRUE,lwd=2)
legend("topright",legend=c("Normal","Binomial"),col=c("blue","red"),
       pch=c(NA,20), lty=c("solid",NA),lwd=c(2,1),cex=0.75)



Child=1:25
CU=round(x)
DS=round(x)
TC=data.frame(Child,CU,DS)
write.table(TC,"trignadons.txt",row.names = FALSE)

set.seed(1000)
x=exp(rnorm(25,log(100),log(1.2)))
c(mean(x),sd(x))
qqPlot(x)


y=x