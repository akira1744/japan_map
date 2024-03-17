pacman::p_load(sf,tidyverse,tidylog)

city_map <- readRDS("data/city_map.rds") %>% 
  print()

# 東京都
city_map %>% 
  filter(str_detect(pref,'東京都')) %>% 
  filter(y>35) %>%  # 島を除外
  ggplot()+
  geom_sf(fill=NA)+
  geom_text(aes(x = x, y = y, label=city),size=2)+
  coord_sf(datum=NA)+ # グリッドの削除
  theme_void() # 軸・背景食の削除

# 埼玉県
city_map %>% 
  filter(str_detect(pref,'埼玉県')) %>% 
  ggplot()+
  geom_sf(fill=NA)+
  geom_text(aes(x = x, y = y, label=city),size=2)+
  coord_sf(datum=NA)+ # グリッドの削除
  theme_void() # 軸・背景食の削除

# 神奈川県
city_map %>% 
  filter(str_detect(pref,'神奈川県')) %>% 
  ggplot()+
  geom_sf(fill=NA)+
  geom_text(aes(x = x, y = y, label=city),size=2)+
  coord_sf(datum=NA)+ # グリッドの削除
  theme_void() # 軸・背景食の削除

# 千葉県
city_map %>% 
  filter(str_detect(pref,'千葉県')) %>% 
  ggplot()+
  geom_sf(fill=NA)+
  geom_text(aes(x = x, y = y, label=city),size=2)+
  coord_sf(datum=NA)+ # グリッドの削除
  theme_void() # 軸・背景食の削除


# 東京 & 埼玉 
city_map %>% 
  filter(str_detect(pref,'東京都|埼玉県')) %>% 
  filter(y>35) %>%  # 島を除外
  ggplot()+
  geom_sf(fill=NA)+
  geom_text(aes(x = x, y = y, label=city),size=1)+
  coord_sf(datum=NA)+ # グリッドの削除
  theme_void() # 軸・背景食の削除

# 大阪
city_map %>% 
  filter(str_detect(pref,'大阪府')) %>% 
  ggplot()+
  geom_sf(fill=NA)+
  geom_text(aes(x = x, y = y, label=city),size=2)+
  coord_sf(datum=NA)+ # グリッドの削除
  theme_void() # 軸・背景食の削除

# 京都
city_map %>% 
  filter(str_detect(pref,'京都府')) %>% 
  ggplot()+
  geom_sf(fill=NA)+
  geom_text(aes(x = x, y = y, label=city),size=2)+
  coord_sf(datum=NA)+ # グリッドの削除
  theme_void() # 軸・背景食の削除
