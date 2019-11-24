####################################
#### Exploratory data analysis
####################################

library(tidyverse)
library(tibble)

cornell <- readRDS("cornell_full.RDS")
penn <- readRDS("penn_full.RDS")

boxplot(as.numeric(str_sub(cornell$track.album.release_date, start = 1, end = 4))) + title("Release years of Cornell Pep Band songs")

boxplot(as.numeric(str_sub(penn$track.album.release_date, start = 1, end = 4)), as.numeric(str_sub(cornell$track.album.release_date, start = 1, end = 4)), names = c("Penn", "Cornell")) + title("release years of band rep songs")

boxplot(as.numeric(str_sub(penn$track.album.release_date, start = 1, end = 4))) + title("Release years of Penn Band songs")

boxplot(penn$track.popularity, cornell$track.popularity, names = c("Penn", "Cornell")) + title("Popularity of band rep songs")

boxplot(penn$energy) + title("Energy of Penn Band songs")

boxplot(penn$danceability) + title("Danceability of Penn Band songs")

boxplot(penn$loudness) + title("Loudness of Penn Band songs")

boxplot(penn$speechiness) + title("Speechiness of Penn Band songs")

boxplot(penn$acousticness) + title("Acousticness of Penn Band songs")

boxplot(penn$instrumentalness) + title("Instrumentalness of Penn Band songs")

boxplot(penn$liveness) + title("Liveness of Penn Band songs")

boxplot(penn$tempo, cornell$tempo, names = c("Penn", "Cornell")) + title("Tempo of band rep songs")

boxplot(penn$valence) + title("Valence of Penn Band songs")

boxplot(cornell$track.popularity) + title("Popularity of Cornell Pep Band songs")

boxplot(cornell$energy) + title("Energy of Cornell Pep Band songs")

boxplot(cornell$danceability) + title("Danceability of Cornell Pep Band songs")

boxplot(cornell$loudness) + title("Loudness of Cornell Pep Band songs")

boxplot(cornell$speechiness) + title("Speechiness of Cornell Pep Band songs")

boxplot(cornell$acousticness) + title("Acousticness of Cornell Pep Band songs")

boxplot(cornell$instrumentalness) + title("Instrumentalness of Cornell Pep Band songs")

boxplot(cornell$liveness) + title("Liveness of Cornell Pep Band songs")

boxplot(cornell$tempo) + title("Tempo of Cornell Pep Band songs")

boxplot(cornell$valence) + title("Valence of Cornell Pep Band songs")

## This takes the purely older versions of songs.  If I want to get an accurate measure of popularity, I should get the most recent popular version of a song.