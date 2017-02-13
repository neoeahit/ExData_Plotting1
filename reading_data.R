read_data <- function(){
  ## reading the data assiming the file is at the same location 
  dat <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na="?")
  ## Letts make time better
  dat$Time <- strptime(paste(dat$Date, dat$Time), "%d/%m/%Y %H:%M:%S")
  ## modyfying date to make it more searchable
  dat$Date <- as.Date(dat$Date, "%d/%m/%Y")
  ##lets take out some dates
  consideredDates <- as.Date(c("2007-02-02", "2007-02-01"), "%Y-%m-%d")
  ##creating a small subset
  data_subset <- subset(dat, Date %in% consideredDates)
  data_subset
}
