library (igraph)
socialdata <- read.csv("Social.csv")
colnames(socialdata) <- c("first", "second")
social <- data.frame(socialdata$first, socialdata$second)
network <- graph.data.frame(social, directed=T)
set.seed(222)
plot(network,
     vertex.color = 'red',
     vertext.size = 2,
)

