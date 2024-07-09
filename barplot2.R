colors = c("green", "blue")
readsname <- c("SRR6433218","SRR6433219","SRR6433220","SRR6433221","SRR6433222")
regions <- c("Normal", "AML")

# Create the matrix of the values.
Values <- matrix(c(5, 5, 5, 5, 5),
                 nrow = 1, ncol = 5, byrow = TRUE)

# Create the bar chart
barplot(Values, main = "Box plot of normalized counts", names.arg = months,
        xlab = "samples", ylab = "log transformed normalized counts",
        col = colors, beside = TRUE)

# Add the legend to the chart
legend("topright", regions, cex = 0.5, fill = colors)

