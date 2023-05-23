require(esquisse)
require(ggplot2)

dados = read.table("LV-C.txt", h = T)

ggplot(dados) +
  aes(x = "", y = C, colour = Trat, group = Trat) +
  geom_boxplot(fill = "#F4F4F4") +
  scale_color_distiller(palette = "Set1", direction = 1) +
  labs(
    x = "Tratamenttos",
    y = "Concentração de Carbono",
    title = "Comportamento do carbono no solo"
  ) +
  theme_minimal() +
  theme(
    legend.position = "none",
    plot.title = element_text(size = 14L,
                              face = "bold",
                              hjust = 0.5)
  ) +
  facet_wrap(vars(Epoca))





