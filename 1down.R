times <- 1000000
iterations <- c()

for (i in 1:times) {
  r <- 1000000
  x <- 0
  while(r != 1) {
    r <- round(runif(1, 0.5, r + 0.5))
    x <- (x+1)
  }
  iterations <- c(iterations, x)
}

pdf("plot.pdf")
hist(iterations)
dev.off()

mean(iterations)
