running <- data.frame(read.csv("summary.csv"))
hist(running$heart_rate_median, probability = FALSE,xlab = "Heart Rate", ylab = "Frequency", main = "Heart Rate Distribution",
     col = rgb(0,1, 0, alpha = 0.5))
axis(1) # Adds horizontal axis
par(new = TRUE)
boxplot(running$heart_rate_median, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 0, 0, alpha = 0.2))

