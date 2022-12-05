# Pie Chart of Gender
pie_plot_gender <- function() {
  slices <- c(292, 5, 5, 21)
  lbls <- c("Male", "Female", "Male/Female", "Unknown")
  pct <- round(slices/sum(slices)*100)
  lbls <- paste(lbls, pct)
  lbls <- paste(lbls,"%",sep="")
  pie(slices,labels = lbls, col=rainbow(length(lbls)),
      main="Pie Chart of Gender")}
pie_plot_gender()

pie_plot_race <- function() {
  slices <- c(144, 85, 18, 3, 66)
  lbls <- c("White", "Black", "Asian", "Native", "Unknown")
  pct <- round(slices/sum(slices)*100)
  lbls <- paste(lbls, pct)
  lbls <- paste(lbls,"%",sep="")
  pie(slices,labels = lbls, col=rainbow(length(lbls)),
      main="Pie Chart of Race")}
pie_plot_race()
