library(spotifyr)
library(tibble)
library(stringr)

Sys.setenv(SPOTIFY_CLIENT_ID = '')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '')

access_token <- get_spotify_access_token()

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
# 
# penn_raw <- get_playlist(playlist_id = "6FfEMbtwq4ptaJe1u0xmdx", authorization = access_token) 
# penn <- as_tibble(penn_raw$tracks$items)
# saveRDS(penn_raw, "penn_json.RDS")
# saveRDS(penn, "penn_tibble.RDS")
# 
# playlist_username <- 'rkludtihkgic030glg9qaandf'
# playlist_uris <- c('6FfEMbtwq4ptaJe1u0xmdx')
# playlist_audio_features <- get_playlist_audio_features(playlist_username, playlist_uris)
# saveRDS(playlist_audio_features, "penn_full.RDS")
#
# playlist_username <- 'rkludtihkgic030glg9qaandf'
# playlist_uris1 <- c('3uhi2JenqbjkVN3XBABnSq')
# playlist_uris2 <- c('6YhIW0wIoWjUXXMYTE3QIV')
# playlist_audio_features1 <- get_playlist_audio_features(playlist_username, playlist_uris1)
# playlist_audio_features2 <- get_playlist_audio_features(playlist_username, playlist_uris2)
# playlist_audio_features <- rbind(playlist_audio_features1, playlist_audio_features2)
# saveRDS(playlist_audio_features, "cornell_full.RDS")
