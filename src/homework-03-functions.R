# Funkció


get_gender <- function(name) {
  if (is.na(comic_characters$gsm[comic_characters$name == name]) == TRUE) {
    paste(strsplit(comic_characters$sex[comic_characters$name == name]
                   , " ", fixed = T)[[1]][1])
  } else {
    paste(strsplit(comic_characters$gsm[comic_characters$name == name]
                   , " ", fixed = T)[[1]][1])
  }
}
