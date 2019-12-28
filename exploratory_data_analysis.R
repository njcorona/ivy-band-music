####################################
#### Exploratory data analysis
####################################

library(tidyverse)
library(tibble)
library(ggplot2)
library(gridExtra)

cornell <- readRDS("cornell_full.RDS")
penn_fullrep19fa <- readRDS("penn_fullrep19fa.RDS")
penn <- penn_fullrep19fa[which(penn_fullrep19fa$`19fa-played`),]

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

# Excludes Big Spender and Time Warp bc no clear artist (musicals)
rbind(
  summarise(.data = penn_fullrep19fa[!is.na(penn_fullrep19fa$ethnicity),] %>% group_by(ethnicity), n = n()) %>% mutate(Rep = "Full"),
  summarise(.data = penn[!is.na(penn$ethnicity),] %>% group_by(ethnicity), n = n()) %>% mutate(Rep = "Played")
) %>%
  ggplot(aes(x = ethnicity, y = n, fill = Rep, group = n)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  ylim(0, 35)  +
  ggtitle("Ethnicity of Song Artists by Rep")

# Excludes Big Spender and Time Warp bc no clear artist (musicals)
rbind(
  summarise(.data = penn_fullrep19fa[!is.na(penn_fullrep19fa$white),] %>% group_by(white), n = n()) %>% mutate(Rep = "Full"),
  summarise(.data = penn[!is.na(penn$white),] %>% group_by(white), n = n()) %>% mutate(Rep = "Played")
) %>%
  ggplot(aes(x = Rep, y = n, fill = white, group = n)) + # group sets order of bars by n (count)
  geom_bar(stat = "identity", position = position_dodge()) +
  ylim(0, 35) +
  ggtitle("Number of Songs by White/Non-White Artists by Rep")


test1 <- summarise(.data = penn_fullrep19fa[!is.na(penn_fullrep19fa$white),] %>% group_by(white), n = n()) %>% mutate(Rep = "Full")
test1$n <- test1$n / sum(test1$n)

test2 <- summarise(.data = penn[!is.na(penn$white),] %>% group_by(white), n = n()) %>% mutate(Rep = "Played")
test2$n <- test2$n / sum(test2$n)

# Excludes Big Spender and Time Warp bc no clear artist (musicals)
rbind(
  test1,
  test2
) %>%
  ggplot(aes(x = Rep, y = n, fill = white)) + # group sets order of bars by n (count)
  geom_bar(stat = "identity") +
  ggtitle("Percent of Songs by White/Non-White Artists by Rep")

ggplot(data.frame(penn$broad_genre1), aes(x=penn$broad_genre1)) +
  geom_bar()

ggplot(data.frame(penn$country), aes(x=penn$country)) +
  geom_bar()

## This takes the purely older versions of songs.  If I want to get an accurate measure of popularity, I should get the most recent popular version of a song.