library(gapminder)
library(ggplot2)
library(gganimate)

data("gapminder")
measures <- gapminder
plot <- ggplot(measures, aes(x=gdpPercap,y=lifeExp,
                                col=continent,
                                size=pop) ) +
  labs(size="Population") + geom_point() + facet_wrap(~continent) +  scale_x_log10() +
  labs(title = "Life Expectency by GDP Per",
       subtitle = "Year: {frame_time}",
       x = "GDP per Capita",
       y = "Life Expectancy") 
plot

Animation <- plotObject +
  transition_states(measures$continent,
                    transition_length = 10,
                    state_length = 5) + transition_time(measures$year)

library(gifski)
Animation

saveGIF({
  for (i in 1:10) plot(runif(10), ylim = 0:1)
})