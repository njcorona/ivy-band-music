library(spotifyr)
library(tibble)
library(stringr)

SPOTIFY_CLIENT_ID <- ""
SPOTIFY_CLIENT_SECRET <- ""


access_token <- get_spotify_access_token(client_id = SPOTIFY_CLIENT_ID,
                                         client_secret = SPOTIFY_CLIENT_SECRET)

# I looked at the Cornell Pep Band Spotify playlist put together here:  https://open.spotify.com/playlist/0a3fsqpDHy0a9Xo1Vc9BRH
# I copied it into two playlists under my own account to allow me to use spotifyr to get the track info.

# cornell1 <- get_playlist(playlist_id = "3uhi2JenqbjkVN3XBABnSq", authorization = access_token)
# cornell2 <- get_playlist(playlist_id = "6YhIW0wIoWjUXXMYTE3QIV", authorization = access_token)
# 
# saveRDS(cornell1, "cornell1.RDS")
# saveRDS(cornell2, "cornell2.RDS")
# 
# cornell1 <- readRDS("cornell1.RDS")
# cornell2 <- readRDS("cornell2.RDS")
# 
# cornell1 <- as_tibble(cornell1$tracks$items)
# cornell2 <- as_tibble(cornell2$tracks$items)
# 
# cornell <- rbind(cornell1, cornell2)
# saveRDS(cornell, "cornell.RDS")
# 
# cornell <- readRDS("cornell.RDS")

boxplot(as.numeric(str_sub(cornell$track.album.release_date, start = 1, end = 4))) + title("Release years of Cornell Pep Band songs")
