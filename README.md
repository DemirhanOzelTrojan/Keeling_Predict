#What is Keeling Predict?

Keeling_Predict is an R based Keeling Curve time series extrapolation.

In order to run Keeling_Predict simply place the data (co2.csv) in the same folder as the R scipt (main.R).
Make sure your R session has the zoo, imputeTS, and forecast CRAN packages installed.

What is the Keeling Curve?

According to the Wikipedia definition: 

"The Keeling Curve is a graph which plots the ongoing change in concentration of carbon dioxide in Earth's atmosphere since 1958. It is based on continuous measurements taken at the Mauna Loa Observatory in Hawaii that began under the supervision of Charles David Keeling."

The Keeling Curve has served, and will continue to serve, as a very useful tool for observing the impact of rising carbon dioxide levels in our atmosphere. With this tool scientists can attempt to correlate the known data to past and current environmental situations such as Global Warming.

By using simple data science principles, in this case a time series, Keeling_Predict forecasts how much carbon dioxide will be in earth's atmosphere by a given date, as well as the rate at which c02 levels will increase. This data can be very useful to environmental scientists who are attempting to forsee the future state of earth's environment.


##Original Data: 

![Alt text](http://i.imgur.com/aWWWi9z.png "")

##Result
![Alt text](https://raw.githubusercontent.com/DemirhanOzelTrojan/Keeling_Predict/master/Results/Test1.png "")

Visit this link to learn more about the Keeling Curve: 

https://scripps.ucsd.edu/programs/keelingcurve/2013/04/03/the-history-of-the-keeling-curve/

