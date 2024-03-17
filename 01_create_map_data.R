pacman::p_load(sf,tidyverse,tidylog)

japan2 = read_sf("https://okumuralab.org/~okumura/stat/data/japan2.geojson", stringsAsFactors=FALSE) %>%
  glimpse()

saveRDS(japan2, 'data/original_map.rds')

map <- japan2 %>% 
  select(code=N03_007,pref=N03_001,gun_seirei=N03_003,city=N03_004) %>% 
  print()

# city毎に重心点を集計
city_map <- map %>%
  group_by(code,pref,gun_seirei,city) %>%
  mutate(centroid = st_centroid(geometry),
         x = st_coordinates(centroid)[,1],
         y = st_coordinates(centroid)[,2]) %>%
  ungroup()

# 出力
saveRDS(city_map, "data/city_map.rds")
