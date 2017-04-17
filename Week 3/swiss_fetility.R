require(datasets); data("swiss"); ?swiss; require(ggplot2); require(GGally)
g = ggpairs(swiss[,1:6], upper = list(continuous = wrap(ggally_cor, size = 10)), lower = list(continuous = "smooth"))
g

summary(lm(Fertility ~ ., data = swiss))$coefficients


summary(lm(Fertility ~ Agriculture, data = swiss))$coefficients
        