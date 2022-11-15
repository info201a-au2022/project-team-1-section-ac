# Race

unique(mass_shooting_table_final$Race)
num_race_white <- sum(mass_shooting_table_final$Race == "White",
                      mass_shooting_table_final$Race == "White American or European American",
                      mass_shooting_table_final$Race == "White American or European American/Some other Race",
                      mass_shooting_table_final$Race == "white",
                      na.rm = TRUE)

num_race_balck <- sum(mass_shooting_table_final$Race == "Black",
                      mass_shooting_table_final$Race == "Black American or African American/Unknown",
                      mass_shooting_table_final$Race == "Black American or African American",
                      mass_shooting_table_final$Race == "black",
                      na.rm = TRUE)

num_race_asian <- sum(mass_shooting_table_final$Race == "Asian", 
                      mass_shooting_table_final$Race == "Asian American",
                      mass_shooting_table_final$Race == "Asian American/Some other race",
                      na.rm = TRUE)
num_race_native <- sum(mass_shooting_table_final$Race == "Native American", 
                       mass_shooting_table_final$Race == "Native American or Alaska Native",
                       na.rm = TRUE)
num_race_unknown <- sum(mass_shooting_table_final$Race == "Unknown", 
                        mass_shooting_table_final$Race == "Some other race",
                        mass_shooting_table_final$Race == "unclear",
                        mass_shooting_table_final$Race == "Other", 
                        mass_shooting_table_final$Race == "Two or more races",
                        na.rm = TRUE)
race_table <- data.frame(Race = c("White", "Black", "Asian", "Native", "Unknown"),
                         num_injured = c(num_race_white,num_race_balck,
                                         num_race_asian,num_race_native,num_race_unknown))

View(race_table)
highest_inj <- max(race_table$num_injured)
highest_injured_race <- filter(race_table, num_injured == highest_inj)$Race

# Gender
num_gender_male <- sum(mass_shooting_table_final$Gender == "Male",
                       mass_shooting_table_final$Gender == "M", na.rm = TRUE)

num_gender_female <- sum(mass_shooting_table_final$Gender == "Female", na.rm = TRUE)

num_gender_female_male <- sum(mass_shooting_table_final$Gender == "Male/Female",
                              mass_shooting_table_final$Gender == "M/F", na.rm = TRUE)

num_gender_unknown <- sum(mass_shooting_table_final$Gender == "Unknown", na.rm = TRUE)

lbls <- c("Male", "Female", "Male/Female", "Unknown")
slices <- c(num_gender_male, num_gender_female, num_gender_female_male, num_gender_unknown)


gender_table <- data.frame(Gender = c("Male", "Female", "Male/Female", "Unknown"),
                           num_injured = c(num_gender_male, num_gender_female, 
                                           num_gender_female_male, num_gender_unknown))
View(gender_table)
# Pie Chart of Gender
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Gender")

highest_injured <- max(gender_table$num_injured)
highest_injured_gender <- filter(gender_table, num_injured == highest_injured)$Gender
# Year

in_2017 <- mass_shooting_table_final[c(1:10), "Injured"]
total_injured_2017 <- sum(in_2017, na.rm = TRUE)

in_2016 <- mass_shooting_table_final[c(11:323), "Injured"]
total_injured_2016 <- sum(in_2016, na.rm = TRUE)

in_2015 <- mass_shooting_table_final[c(324:440), "Injured"]
total_injured_2015 <- sum(in_2015, na.rm = TRUE)

in_2014 <- mass_shooting_table_final[c(441:456), "Injured"]
total_injured_2014 <- sum(in_2014, na.rm = TRUE)

in_2013 <- mass_shooting_table_final[c(457:478), "Injured"]
total_injured_2013 <- sum(in_2013, na.rm = TRUE)

in_2012 <- mass_shooting_table_final[c(479:499), "Injured"]
total_injured_2012 <- sum(in_2012, na.rm = TRUE)

in_2011 <- mass_shooting_table_final[c(500:507), "Injured"]
total_injured_2011 <- sum(in_2011, na.rm = TRUE)

in_2010 <- mass_shooting_table_final[c(508:510), "Injured"]
total_injured_2010 <- sum(in_2010, na.rm = TRUE)

in_2009 <- mass_shooting_table_final[c(511:550), "Injured"]
total_injured_2009 <- sum(in_2009, na.rm = TRUE)

in_2008 <- mass_shooting_table_final[c(551:559), "Injured"]
total_injured_2008 <- sum(in_2008, na.rm = TRUE)

in_2007 <- mass_shooting_table_final[c(560:573), "Injured"]
total_injured_2007 <- sum(in_2007, na.rm = TRUE)

in_2006 <- mass_shooting_table_final[c(574:588), "Injured"]
total_injured_2006 <- sum(in_2006, na.rm = TRUE)
in_2005 <- mass_shooting_table_final[c(589:593), "Injured"]
total_injured_2005 <- sum(in_2005, na.rm = TRUE)
in_2004 <- mass_shooting_table_final[c(594:596), "Injured"]
total_injured_2004 <- sum(in_2004, na.rm = TRUE)
in_2003 <- mass_shooting_table_final[c(597:600), "Injured"]
total_injured_2003 <- sum(in_2003, na.rm = TRUE)
in_2002 <- mass_shooting_table_final[c(601:602), "Injured"]
total_injured_2002 <- sum(in_2002, na.rm = TRUE)
in_2001 <- mass_shooting_table_final[c(603:605), "Injured"]
total_injured_2001 <- sum(in_2001, na.rm = TRUE)
in_2000 <- mass_shooting_table_final[c(606:607), "Injured"]
total_injured_2001 <- sum(in_2001, na.rm = TRUE)

year_table <- data.frame(Year  = c("2017","2016","2015","2014","2013","2012","2011","2010","2009","2008","2007",
                                   "2006","2005","2004","2003","2002","2001","2000"),
                         Total_injured_year = c(total_injured_2017,total_injured_2016,total_injured_2015,
                                                total_injured_2014, total_injured_2013,total_injured_2012, 
                                                total_injured_2011,total_injured_2010, total_injured_2009,
                                                total_injured_2008,total_injured_2007, total_injured_2006,
                                                total_injured_2005,total_injured_2004, total_injured_2003,
                                                total_injured_2002,total_injured_2001, total_injured_2000))

View(year_table)

highest_year <- max(year_table$Total_injured_year)
highest_injured_year <- filter(year_table, Total_injured_year == highest_year)$Year

#