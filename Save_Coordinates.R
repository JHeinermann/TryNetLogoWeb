# Script to export data for NetLogo Web

MyFolder <- "C:/Users/YourFolder" # Change to your Directory

# Save only X-Coordinates
write.table(t(rep(seq(-10, 10, 1), 21)), 
            file = paste0(MyFolder, "/X_Coords.txt"), 
            sep = " ", 
            col.names = FALSE,
            row.names = FALSE)

# Save only Y-Coordinates
write.table(t(rep(seq(-10, 10, 1), each = 21)), 
            file = paste0(MyFolder, "/Y_Coords.txt"), 
            sep = " ", 
            col.names = FALSE,
            row.names = FALSE)

# Save X- and Y-Coordinates
write.table(data.frame(x = rep(seq(-10, 10, 1), 21),
                       y = rep(seq(-10, 10, 1), each = 21)), 
            file = paste0(MyFolder, "/XY_Coords.txt"), 
            sep = " ", 
            col.names = FALSE,
            row.names = FALSE)
