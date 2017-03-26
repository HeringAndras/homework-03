# Házi feladat 3
# Programozás I.
# 2016/17. II. félév
# Hering András
# 2017.03.23

#### 2. feladat ####

lista <- NULL
lista <- as.list(lista)
for ( i in 1:5) {
  lista[[i]]<-runif( n = round(runif(1,1,2)*10,0), min = 1, max = 2)
}

length(lista)


hossz_for <- NULL
for ( i in 1:length(lista)) {
  hossz_for[i] <- length(lista[[i]])
}

hossz_lapply <- lapply(lista , length)
hossz_sapply <- sapply(lista, length)

hossz_for
hossz_lapply
hossz_sapply

#### 3. feladat ####

data("chickwts")

chickatlag <- aggregate(list(weight = chickwts$weight),
                       list(feed = chickwts$feed), mean)

chickatlag <- chickatlag[order(chickatlag$weight,decreasing = T),c(1,2)]

chickatlag

#### 4. feladat ####

otventiz <- matrix(0,50,10)
otventiz <- apply(otventiz,2,rnorm, sd = row(otventiz) )

szoras_for <- NULL
for ( i in 1:nrow(otventiz)) {
  szoras_for[i] <- sd(otventiz[i,])
}

szoras_apply <- apply(otventiz,1,sd)

szoras_for
szoras_apply

otventiz_normalised <- -1+(((otventiz-min(otventiz))*(1-(-1)))/
                             (max(otventiz)-min(otventiz)))

apply(otventiz_normalised,1,mean)

#### 5. feladat ####

require(fivethirtyeight)
data("comic_characters")

namesplit <- strsplit(comic_characters$name, " (", fixed = T)
comic_characters$name <- sapply(namesplit,"[",1)


