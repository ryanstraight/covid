# Create plots Test some plots
usa_start %>%
  ggplot(aes(x=date, y=new_cases)) +
  geom_line() +
  geom_point(alpha = 3/10)
  
ggsave(here("graphs", "usa_new_cases.png"))
