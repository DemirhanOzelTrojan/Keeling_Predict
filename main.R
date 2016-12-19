#include packages
library(forecast)
library(imputeTS)

co2 <- read.csv('co2.csv')

# Replace -99.99 with actual NA and impute missing values
co2$CO2[co2$CO2 == -99.99] <- NA
co2$CO2 <- na.interpolation(co2$CO2)


#data preperation
co2.ts <- ts(co2$CO2, start = c(1958, 1), end = c(2016, 10), freq = 12)

#split training and testing data, use 90% of available data in the co2.csv file
train.test.split <- 0.9
split.index <- round(length(co2.ts) * train.test.split)

#train time series 
co2.train.ts <- window(co2.ts, start = c(1958, 1), end = c(1958, split.index))

#test time series
co2.test.ts <- window(co2.ts, start = c(1958, split.index + 1), end = c(1958, length(co2.ts)))


#create a fit using the  time series
fit <- ets(co2.ts, model = 'AAA')

#forecast using the fit
predictions <- forecast(fit, 12 * 20, level = 0.95)


#save plotted data as png in home directory
png(filename="~/keeling.png")

plot(predictions,
     main = '',
     xlab = 'Time',
     ylab = 'CO2 (ppm)',
     xlim = c(1958, 2040),
     shaded = TRUE,
     shadecols=c('light blue'))
legend('topleft',
       legend=c('Historical Data',
                'Predicted Data',
                '95% CI'),
       fill=c(NA, NA, 'light blue'),
       col=c('black', 'blue', NA),
       lty=c(1, 1, NA),
       lwd=c(1, 2, NA),
       border=c(NA, NA, 'black'),
       inset=0.01)


dev.off()

#print notification in console
print("keeling.png saved to home directory.")


