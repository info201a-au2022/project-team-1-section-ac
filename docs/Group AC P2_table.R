#Table
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








