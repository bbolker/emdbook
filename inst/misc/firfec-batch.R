library(emdbook)
library(R2jags)
library(coda)

data(FirDBHFec_sum)
X <- na.omit(FirDBHFec_sum[,c("fecundity","DBH","pop")])
X$fecundity = round(X$fecundity)
##
DBH <- X$DBH
cones <- X$fecundity
n <- length(DBH)
inits <- list(list(a=0,b=0,k=1),list(a=2,b=-2,k=1),
              list(a=-2,b=2,k=1))
bf <- function(x) system.file("BUGS",x,package="emdbook")
firfec0.bugs <- jags(data=list("DBH","cones","n"),
                     inits,parameters.to.save=c("a","b","k"),
                     model.file=bf("firfec0.bug"),
                     n.chains=length(inits),n.iter=9000)
inits <- list(list(a=c(0,0),b=c(0,0),k=1),
              list(a=c(2,0),b=c(-2,0),k=1),
              list(a=c(0,2),b=c(0,-2),k=1))
grp <- as.numeric(X$WAVE_NON)
firfec1.bugs <- jags(data=list("DBH","cones","n","grp"),
                       inits,parameters.to.save=c("a","b","k"),
                       model.file=bf("firfec1.bug"),
                       n.chains=length(inits),n.iter=6000)
inits <- list(list(a=c(0,0),b=c(0,0),k=c(1,1)),
              list(a=c(2,0),b=c(-2,0),k=c(1,1)),
              list(a=c(0,2),b=c(0,-2),k=c(1,1)))
firfec2.bugs <- jags(data=list("DBH","cones","n","grp"),
                     inits,parameters.to.save=c("a","b","k"),
                     model.file=bf("firfec2.bug"),
                     n.chains=length(inits),n.iter=6000)

save("firfec0.bugs","firfec1.bugs","firfec2.bugs",
     file="firfec-batch3.RData")
