library(readr)
banknote <- read_csv("banknote.csv")
set.seed(42)
rows <- sample(nrow(banknote))
banknote_randomize <- banknote[rows, ]
banknote_entrenamiento <- head(banknote_randomize, 1072)
banknote_evaluacion <- tail(banknote_randomize, 300)
write.csv(banknote_entrenamiento,"banknote_entrenamiento.csv", row.names = FALSE)
write.csv(banknote_evaluacion,"banknote_evaluacion.csv", row.names = FALSE)