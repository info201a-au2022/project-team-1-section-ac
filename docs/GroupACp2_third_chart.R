library("dplyr")

mass_shooting1 <- data.frame(Mass_Shootings_Dataset_Ver_5$Date, Mass_Shootings_Dataset_Ver_5$Location, Mass_Shootings_Dataset_Ver_5$Target, Mass_Shootings_Dataset_Ver_5$Cause)
View(mass_shooting1)

colnames(mass_shooting1) <- c("Date", "Location","Target","Cause")

mass_shooting2 <- data.frame(Mass_Shootings_Dataset_Ver_2$Date, Mass_Shootings_Dataset_Ver_2$Injured)
colnames(mass_shooting2) <- c("Date", "Injured")
View(mass_shooting2)

mass_shooting3 <- data.frame(Mass_Shootings_Dataset$Date, Mass_Shootings_Dataset$Race, Mass_Shootings_Dataset$`Mental Health Issues`, Mass_Shootings_Dataset$Gender)
mass_shooting3
colnames(mass_shooting3) <- c("Date", "Race","Mental","Gender")
View(mass_shooting3)

mass_shooting_table <- left_join(mass_shooting1, mass_shooting2)
mass_shooting_table
View(mass_shooting_table)

mass_shooting_table_final <- left_join(mass_shooting_table, mass_shooting3)
View(mass_shooting_table_final)


#target 和 cause的表
install.packages("ggplot2")
library(ggplot2)
library(stringr)


unique(mass_shooting_table_final$Target)

##sum(str_detect(mass_shooting_table_final$Target, "random", na.rm = TRUE))


##Target_graph <- ggplot(data = mass_shooting_table_final$Target, na.rm = TRUE) + 
##  geom_bar(aes(x = Target, fill = number)) + 
##  scale_x_discrete("Type of target", lables = c("random", "coworkers","women","police", na.rm = TRUE)) + 
##  scale_y_continuous(name = "Victim Number", breaks = c(10，20，30，40，50，na.rm = TRUE), 
##                     labels = c("10", "20", "30", "40", "50")) 

num_familymember <- sum (mass_shooting_table_final$Target == "Family",
                         mass_shooting_table_final$Target == "Family/Neighbors",
                         mass_shooting_table_final$Target == "Ex-Girlfriend",
                         mass_shooting_table_final$Target == "Ex-Wife",
                         mass_shooting_table_final$Target == "Ex-Girlfriend & Family",
                         mass_shooting_table_final$Target == "Ex-Wife & Family",
                         mass_shooting_table_final$Target == "Girlfriend",
                         mass_shooting_table_final$Target == "partner's family",
                         na.rm =TRUE)
num_coworker <- sum (mass_shooting_table_final$Target == "coworkers",
                     mass_shooting_table_final$Target == "Coworkers",
                     mass_shooting_table_final$Target == "Coworker's Family",
                     mass_shooting_table_final$Target ==  "Ex-Coworkers",
                     na.rm =TRUE)
num_school <- sum(mass_shooting_table_final$Target == "Students",
                  mass_shooting_table_final$Target == "uninvited guests",
                  mass_shooting_table_final$Target == "Students",
                  mass_shooting_table_final$Target == "Students+Teachers",
                  mass_shooting_table_final$Target == "school girls",
                  na.rm = TRUE)

num_social_workers <- sum(mass_shooting_table_final == "police",
                          mass_shooting_table_final == "Trooper",
                          mass_shooting_table_final == "drug dealer",
                          mass_shooting_table_final == "Marines" ,
                          mass_shooting_table_final == "rapper+random",
                          mass_shooting_table_final == "TSA Officer",
                          mass_shooting_table_final == "Congresswoman",
                          mass_shooting_table_final == "Policeman+Council Member",
                          mass_shooting_table_final == "basketball players",
                          mass_shooting_table_final == "hunters" ,
                          mass_shooting_table_final == "psychologist+psychiatrist",
                          mass_shooting_table_final == "lawyers" ,
                          mass_shooting_table_final == "monks",
                          na.rm = TRUE)

victim_table <- data.frame(victum_type = c("familymember", "coworker","school","social_workers"),
                           victum_number = c(num_familymember, num_coworker, num_school, num_social_workers))

victim_graph <- ggplot(data = victim_table) +
  geom_col(mapping = aes(x = victum_type, y = victum_number))
victim_graph







