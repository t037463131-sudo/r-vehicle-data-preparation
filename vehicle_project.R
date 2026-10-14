# Vehicle data project
# I used comb08 because it shows combined MPG.
# I chose log and square root transformations because the data may be skewed.

vehicles <- read.csv("vehicles.csv")

head(vehicles)
str(vehicles)

sum(is.na(vehicles))
sum(duplicated(vehicles))
summary(vehicles$comb08)

# Clean the data
clean_vehicles <- vehicles[!is.na(vehicles$comb08), ]
clean_vehicles <- clean_vehicles[!duplicated(clean_vehicles), ]
clean_vehicles <- clean_vehicles[clean_vehicles$comb08 > 0, ]

summary(clean_vehicles$comb08)

# Transform the MPG values
clean_vehicles$log_comb08 <- log(clean_vehicles$comb08)
clean_vehicles$sqrt_comb08 <- sqrt(clean_vehicles$comb08)

summary(clean_vehicles$log_comb08)
summary(clean_vehicles$sqrt_comb08)

# Save the final data
write.csv(clean_vehicles,
          "vehicles_clean_transformed.csv",
          row.names = FALSE)