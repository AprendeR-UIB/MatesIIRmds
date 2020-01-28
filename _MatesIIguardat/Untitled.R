y=0:30
plot(y,dbinom(y,50,0.3),pch=20,xlab="",ylab="", col="red",
     main="B(50,0.3) i N(50*0.3,sqrt(50*0.3*(1-0.3)))")
curve(dnorm(x,50*0.3,sqrt(50*0.3*(1-0.3))),col="blue",add=TRUE,lwd=2)
legend("topright",legend=c("Normal","Binomial"),col=c("blue","red"),
       pch=c(NA,20), lty=c("solid",NA),lwd=c(2,1),cex=0.75)

###
library(car)
set.seed(62)
x=exp(rnorm(25,log(32),log(0.6)))
qqPlot(x, distribution="norm", mean=mean(x),sd=sd(x), pch=20, id=FALSE)

x=c(49.04010,32.73232,32.07696,32.89909,33.30217,28.57144,29.37839,32.86371,35.45363,34.14101,26.02747,34.44105,34.59420,34.93203,43.66295
,27.63538,32.89448,28.18538,24.91558,26.15795,30.92342,31.06541,24.51410,48.08492,46.30495
)
xx=c(50,33,33,33,34,29,30,33,36,35,27,35,35,35,44,28,33,29,38,27,31,32,36,45,47)

y=exp(rnorm(25,log(72),log(1.3)))
qqPlot(ceiling(y))
hist(ceiling(y),breaks=10)


yy=ceiling(y)


yy=ceiling(y)

Child=1:25
CU=c(45,30,30,30,31,27,27,30,33,32,25,32,32,32,38,26,30,27,35,25,28,33,33,37,40)
DS=c(80,68,83,78,79,78,89,78,72,75,82,64,80,75,105,79,71,75,67,61,63,95,69,65,92)
TC=data.frame(Child,CU,DS)
write.table(TC,"trignadons.txt",row.names = FALSE)

set.seed(1000)
x=exp(rnorm(25,log(100),log(1.2)))
c(mean(x),sd(x))
qqPlot(x)


y=x