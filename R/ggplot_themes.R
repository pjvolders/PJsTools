library(ggplot2)
# custom ggplot2 themes
pjstheme = theme(
  axis.text.x = element_text(colour='gray50', angle = 90, hjust = 1, vjust = 0.5), 
  axis.text.y = element_text(colour='gray50'), 
  panel.background = element_blank(), 
  panel.grid.minor = element_blank(), 
  panel.grid.major = element_blank(), 
  panel.border = element_rect(colour='gray50', fill = NA), 
  strip.background = element_blank()
)

theme_fancy_plot = theme_bw(base_size = 6) + 
  theme(text = element_text(size=6),
        title = element_text(size=6),
        line = element_line(size=0.3),
        axis.title = element_text(size=7),
        axis.text = element_text(size=6),
        #axis.title.y = element_blank(),
        axis.line = element_blank(),
        axis.ticks = element_line(size=0.3),
        strip.background = element_blank(),
        strip.text.y = element_blank(),
        panel.grid = element_blank()) 

theme_fancy_plot_discrete_x = theme_fancy_plot + theme(
  axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1)
)

# A colorblind-friendly palette 
colorblind.palette = c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
colorblind.palette.grey = c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# from http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette
