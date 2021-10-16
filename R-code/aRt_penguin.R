#
# ██████╗ ███████╗███╗   ██╗ ██████╗ ██╗   ██╗██╗███╗   ██╗
# ██╔══██╗██╔════╝████╗  ██║██╔════╝ ██║   ██║██║████╗  ██║
# ██████╔╝█████╗  ██╔██╗ ██║██║  ███╗██║   ██║██║██╔██╗ ██║
# ██╔═══╝ ██╔══╝  ██║╚██╗██║██║   ██║██║   ██║██║██║╚██╗██║
# ██║     ███████╗██║ ╚████║╚██████╔╝╚██████╔╝██║██║ ╚████║
# ╚═╝     ╚══════╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝
#

#############
# libraries
#############

library(tidyverse) # best package ever
library(ltc)       # add palettes
library(ggforce)   # ggforce is create for creating shapes

########
# data
########

data=data.frame(x1=0,x2=10,y1=-5,y2=10, x3=4.5,x4=5.5,y3=5,y4=14) # empty canvas

# add the penguin shape
penguin <-  data.frame(
  x = c(5, 8,   6,  5, 4, 3,  2,2,4, 6,6.5,  6.5, 5,   2.75,2, 1,2,3,6,6.5,6.5,5.5,5.5,6.25,5,4),
  y = c(11, 12, 12, 13,13,12, 9,2,10,10, 9,   6,  4,   1,0  ,  1,1,0,0,0.5,1,1.25,0.5,1.75,1.75,1.2)
)


########
# plot
########

p2 <- ggplot() +
  geom_rect(data=data, mapping=aes(xmin=x1, xmax=x2, ymin=y1, ymax=y4), fill="#eae3dc",color="NA") +
  geom_bspline(data=penguin, aes(x = x, y = y), color="black", n=100000) +
  #geom_circle(aes(x0 = 7, y0 = 4, r = 0.1),fill="black", inherit.aes = FALSE)
  theme_void()

p2 + annotate("text", x=5, y=-1, label="Pygoscelis adeliae", family="Avenir", fontface="italic", size=5) +
  annotate("text", x=5, y=-2,
           label="Made in R by Loukas Theodosiou",
           family="Avenir", fontface="italic", size=2)


