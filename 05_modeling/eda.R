# Exploratory Data Analysis (EDA)

# Same stats, different graphs
# https://blog.acolyer.org/2017/10/31/same-stats-different-graphs-generating-datasets-with-varied-appearance-and-identical-statistics-through-simulated-annealing/
ff <- y ~ x
mods <- setNames(as.list(1:4), paste0("lm", 1:4))
for (i in 1:4) {
    ff[2:3] <- lapply(paste0(c("y","x"), i), as.name)
    mods[[i]] <- lmi <- lm(ff, data = anscombe)
    print(anova(lmi))
}
op <- par(mfrow = c(2, 2), mar = 0.1 + c(4,4,1,1), oma =  c(0, 0, 2, 0))
for (i in 1:4) {
    ff[2:3] <- lapply(paste0(c("y","x"), i), as.name)
    plot(ff, data = anscombe, col = "red", pch = 21, bg = "orange", cex = 1.2,
         xlim = c(3, 19), ylim = c(3, 13))
    abline(mods[[i]], col = "blue")
}
mtext("Anscombe's 4 Regression data sets", outer = TRUE, cex = 1.5)
par(op)
