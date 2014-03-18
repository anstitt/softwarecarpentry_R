(y <- 1:3)
(z <- 3:7)
y + z
(y <- 1:5)
(z <- 1:10)
y + z
##R recycles automatically (sometimes silent)
x <- c(1, 4, 9)
str(x)
x  <- ("cabbage", pi, 0.3, TRUE)
str(x)
x <- list("cabbage", pi, 0.3, TRUE)
### list -> for scalars of different modes
x <- -3:3
str(x)
x < 0

set.seed(1)
(x <- round(rnorm(8), 2))
names(x) <- letters[seq_along(x)]
x[4]
x[c(3, 5, 8)]
x[-7]
x[-5]
x < 0
x[x < 0]
which(x < 0)
## get every other element of x
x[seq(length(x)) %% 2 == 0]
## or
x[seq(2, length(x), by = 2)]
## or
x[c(FALSE, TRUE)]
## or
x[c(TRUE, FALSE)]

month.abb
month.name

(x  <-  cbind(month.abb, month.name))
(x <- matrix(1:10, nrow =5))

(x <- data.frame(month.num = 1:12,
                 month.abb,
                 month.name))
## to protect characters from becoming factors use I
(x <- data.frame(month.num = 1:12,
                 I(month.abb),
                 I(month.name)))
install.packages("ggplot2", dependencies = TRUE)