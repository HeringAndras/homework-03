# Házi feladat 3
# Programozás I.
# 2016/17. II. félév
# Hering András
# 2017.03.23

# lista <- list(round((runif(n = 5,min = 1,max = 2)*10), digits = 0))


y <- NULL
y <- as.list(y)
for ( i in 1:5) {
  y[[i]]<-runif( n = round(runif(1,1,2)*10,0), min = 1, max = 2)
}

y


