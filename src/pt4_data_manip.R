library(tidyverse)   #loading the tidyverse package
shop_tbl <- read_csv("../data/shop.csv", col_names = F)
names(shop_tbl) <- c("item", "price", "healthy", "department")
View(shop_tbl)
shop_tbl
slice(shop_tbl, 1:5)
slice(shop_tbl, c(1,2,3,7))
filter(shop_tbl, healthy == TRUE)
filter(shop_tbl, healthy == TRUE & department == "produce")
select(shop_tbl, c("item", "price", "healthy"))
mutate(shop_tbl, new_price = price + 0.20)
View(shop_tbl)
shop_tbl <- mutate(shop_tbl, new_price = price + 0.20)  #raising the shop prices by $0.20
View(shop_tbl)
shop_tbl <- mutate(shop_tbl, price = price + 0.20)
View(shop_tbl)
select(shop_tbl, -c(new_price))
shop_tbl <- select(shop_tbl, -c(new_price))
arrange(shop_tbl, price)
arrange(shop_tbl, desc(price))
arrange(shop_tbl, desc(price), department)
mutate(select(shop_tbl, c("item", "price", "healthy")), new_price = price + 0.20)
shop_tbl %>% mutate(new_price = price + 0.20)
select(shop_tbl, c("item", "price", "healthy")) %>% mutate(new_price = price + 0.20)

