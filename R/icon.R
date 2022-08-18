library(hexSticker)
library(tidyverse)
set.seed(212)
n <- 28
d <- tibble(
  x1 = runif(n),
  x2 = rbinom(n, 3, 0.5),
  y = x1 ^ 4 + rnorm(n)
)

p <- ggplot(d, aes(x = x1, y = y, color = x2)) + 
  geom_point() + 
  geom_smooth(method = "loess", formula = y ~ x, color = "#1F7349") + 
  theme_void() + 
  theme_transparent() + 
  theme(legend.position = "none")
sticker(p,
        package = "STA 112", 
        p_size = 30,
        s_x = 1,
        s_y = .75,
        s_width = 1.75,
        s_height = 0.75,
        filename = "img/favicon.png",
        h_color = "#1F7349",
        h_fill = "white",
        p_color = "#1F7349")
