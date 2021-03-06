######################################################################
## 																																	##
## This script takes the file climate_location_data from						##
## "Computed" folder and the accident_node data to compute					##
## the distance between the weather station and the accident's			##
## location and selects the station which has the least distance.		##
## 																																	##
##																																	##
##		Script Name: insert_station_info.r														##
##		Created by: Abhisek																						##
##																																	##
##																																	##
######################################################################


library(sqldf)
library(geosphere)
library(tidyverse)


# Load CSVs
accident_node <-  read.csv("Datasets/Road Crashes/NODE.CSV")
climate_location_data <- read.csv("Datasets/Computed/climate_location_data.csv")

# Do cross product between accident node data and weather location data
cross_product <- merge(accident_node, climate_location_data, all=TRUE)

# Add a new column dist_station_crash by calculating distance via library geosphere
cross_product <- cross_product %>% 
	mutate(dist_station_crash = distHaversine(cbind(Long, Lat), cbind(Longitude, Latitude)))

# Get minimum distance via sql
accident_station_data <- sqldf("select ACCIDENT_NO, StationName, min(dist_station_crash) min_dist_station_crash from cross_product
			group by ACCIDENT_NO")

# Write CVS file
write.csv(accident_station_data, "Datasets/Computed/accident_station_data")