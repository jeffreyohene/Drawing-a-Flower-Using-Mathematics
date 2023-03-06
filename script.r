# Set plot images to a nice size
options(repr.plot.width = 4, repr.plot.height = 4)

# Loading packages
library(tidyverse)

# Transforming circle data to plot
t <- seq(0, 2*pi, length.out = 50)
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Scatter plot of points in a circle
p <- ggplot(df, aes(x, y))
p + geom_point()

# Define the number of points
points <- 500

# The Golden Angle
angle <- pi*(3-sqrt(5))

t <- (1:points) * angle
x <- sin(t)
y <-cos(t)
df <- data.frame(t, x, y)

# Scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point()

df <- data.frame(t, x, y)

# Scatter plot of points in a spiral and remove some plot components
p <- ggplot(df, aes(x*t, y*t))
p + geom_point() +
  theme(panel.background = element_rect(fill = 'white'),
        panel.grid = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank()
  )


# Modification of size, transparency, and color
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = 8, alpha = 0.5, color = 'darkgreen') +
  theme(panel.background = element_rect(fill = 'white'),
        panel.grid = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank()
  )


# Modifying the color, size, and shape of the points
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size = t), alpha = 0.5, shape = 8) +
  theme(panel.background = element_rect(fill = 'white'),
        panel.grid = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank(),
        legend.position = 'none'
  )


# Modifying the color and shape of the points, and the background color
p <- ggplot(df, aes(x*t, y*t))
p +  geom_point(aes(size = t), alpha = 0.5, shape = 17, color = 'yellow') +
  theme(panel.background = element_rect(fill = 'darkmagenta'),
        panel.grid = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank(),
        legend.position = 'none'
  )



# Change the value of the angle
angle <- 2.0
points <- 1000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Replotting w different angle value
p <- ggplot(df, aes(x*t, y*t))
p +  geom_point(aes(size = t), alpha = 0.5, shape = 17, color = 'yellow') +
  theme(panel.background = element_rect(fill = 'darkmagenta'),
        panel.grid = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank(),
        legend.position = 'none'
  )


# Changing the values of angle and points
angle <- 13*pi/180
points <- 2000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Adjusting the plot parameters to create the magenta flower
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = 80, alpha = 0.1, shape = 1, color = 'magenta4')+
  theme(legend.position='none',
        panel.background = element_rect(fill = 'white'),
        panel.grid=element_blank(),
        axis.ticks=element_blank(),
        axis.title=element_blank(),
        axis.text=element_blank())
