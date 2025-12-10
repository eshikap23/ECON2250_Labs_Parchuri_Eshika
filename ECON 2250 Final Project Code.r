str(EconStats)

ggplot(EconStats, aes(x = `GDP per capita growth`, y = `GHG Emissions Per Capita`)) + geom_point(color="#CC3300") + labs(x="2022 GDP Per Capita Growth (% change)", y="2022 GHG Emissions Per Capita (tons)")+ geom_smooth(method = "lm",se = FALSE, size= 0.5, color="#003333")

cor(EconStats$`GDP per capita growth`, EconStats$`GHG Emissions Per Capita`, use = "complete.obs")

EconStats$`GDP per capita` <- as.numeric(EconStats$`GDP per capita`)
ggplot(EconStats, aes(x = `GDP per capita`, y = `GHG Emissions Per Capita`)) + geom_point(color="#CC3300") + labs(x = "2022 GDP Per Capita (current USD)", y = "2022 GHG Emissions Per Capita (tons)") + scale_x_continuous(
  breaks = seq(
    from = floor(min(EconStats$`GDP per capita`, na.rm = TRUE) / 10000) * 10000,
    to   = ceiling(max(EconStats$`GDP per capita`, na.rm = TRUE) / 10000) * 10000,
    by   = 10000
  )
)+ geom_smooth(method = "lm",se = FALSE, size= 0.5, color="#003333")


                                                                                                   
                                                                                                   
                                                                                                   