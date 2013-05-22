result_h2l <- function(k, r2n, p) {
  
  x <- qnorm(1 - k)
  z <- dnorm(x)
  i <- z / k
  cc <- k * (1 - k) * k * (1 - k) / (z^2 * p * (1 - p))
  theta <- i * ((p - k)/(1 - k)) * (i * ((p - k) / ( 1 - k)) - x)
  e <- 1 - p^(2 * p) * (1 - p)^(2 * (1 - p))
  h2l <- cc * e * r2n / (1 + cc * e * theta * r2n)

}

limit_r2n <- function(k, p) {

	x <- qnorm(1 - k)
	z <- dnorm(x)
	i <- z / k
	cc <- k * (1 - k) * k * (1 - k) / (z^2 * p * (1 - p))
	theta <- i * ((p - k)/(1 - k)) * (i * ((p - k) / ( 1 - k)) - x)
	e <- 1 - p^(2 * p) * (1 - p)^(2 * (1 - p))
	r2n <- -1 / (cc * e * theta -cc * e)
	min(1, r2n)

}