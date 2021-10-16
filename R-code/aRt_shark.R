# ███████╗██╗  ██╗ █████╗ ██████╗ ██╗  ██╗
# ██╔════╝██║  ██║██╔══██╗██╔══██╗██║ ██╔╝
# ███████╗███████║███████║██████╔╝█████╔╝ 
# ╚════██║██╔══██║██╔══██║██╔══██╗██╔═██╗ 
# ███████║██║  ██║██║  ██║██║  ██║██║  ██╗
# ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝

#############
# libraries 
#############

library(tidyverse) # best package ever
library(ltc)       # add palettes
library(ggforce)   # ggforce is create for creating shapes

########
# data
########

data=data.frame(x1=0,x2=10,y1=-5,y2=10, x3=4.5,x4=5.5,y3=5,y4=14) # create an empty canvas

# add the shark shape
shark <- data.frame(x=c(1.999, 1.1,  2.5,  4.00, 5.00,  3.00, 4.00, 5.50, 7.00, 7.50, 7.00, 6.50, 8.00, 8.00, 
                        7.50, 5.50, 5.50, 4.75, 4.75, 4.25, 4.00, 3.75, 3.50, 3.00,1.00,1.75),
                    y=c(5.000, 10.0, 4.00, 2.00, 1.50,  1.00, 0.95, 1.50, 1.55, 1.75, 3.50, 1.50, 2.50, 2.75,
                        4.00, 5.50, 5.25, 9.00, 5.50, 5.20, 5.00, 4.75, 4.50, 4.00,0.00,3.50)
)

########
# plot
########

p1 <- ggplot() +
  geom_rect(data=data, mapping=aes(xmin=x1, xmax=x2, ymin=y1, ymax=y4), fill="#eae3dc",color="NA") +
  geom_bspline(data=shark, aes(x = x, y = y), color="black", n=100000) +
  #geom_circle(aes(x0 = 7, y0 = 4, r = 0.1),fill="black", inherit.aes = FALSE)
  theme_void()

 p1 + annotate("text", x=5, y=-1, label="Carcharodon carcharias", family="Avenir", fontface="italic", size=5) +
  annotate("text", x=5, y=-2, 
           label="Made in R by Loukas Theodosiou", 
           family="Avenir", fontface="italic", size=2) 


