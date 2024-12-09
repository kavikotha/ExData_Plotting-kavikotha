png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

# Plot 1
plot(subset_data$DateTime, subset_data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

# Plot 2
plot(subset_data$DateTime, subset_data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# Plot 3
plot(subset_data$DateTime, subset_data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(subset_data$DateTime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

# Plot 4
plot(subset_data$DateTime, subset_data$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.off()