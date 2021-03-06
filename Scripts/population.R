# SUMMARY ----
# This file is used to read and TRANSFORM the POPULATION file



population <- read_xls("Datasets/Population/victoria_population_by_LGA_2011-18.xls" , skip = 8)
population <- population[,c(1,2,3,69,78)]
colnames(population)[colnames(population)=="no....69"] <- "TOTAL_POPULATION"
colnames(population)[colnames(population)=="LABEL"] <- "LGA"
colnames(accident)[colnames(accident)=="LGA_NAME"] <- "LGA"
for (i in 1:length(colnames(population))) {
	colnames(population)[i] = toupper(colnames(population)[i])
}
#populationLGA <- data.frame(unique(population$LGA))
#colnames(populationLGA)[colnames(populationLGA)=="unique.population.LGA."] <- "LGA"
#accidentLGA <- data.frame(unique(accident$LGA))
#colnames(accidentLGA)[colnames(accidentLGA)=="unique.accident.LGA_NAME."] <- "LGA"
#population$LGA <- toupper(population$LGA)
population[population=="Greater Dandenong (C)"] <- "DANDENONG"
population[population=="Casey (C)"] <- "CASEY"
population[population=="Mornington Peninsula (S)"] <- "MORNINGTON PENINSULA"
population[population=="Greater Dandenong (C)"] <- "DANDENONG"
population[population=="Baw Baw (S)"] <- "BAW BAW"
population[population=="Frankston (C)"] <- "FRANKSTON"
population[population=="Wyndham (C)"] <- "WYNDHAM"
population[population=="East Gippsland (S)"] <- "EAST GIPPSLAND"
population[population=="Latrobe (C) (Vic.)"] <- "LATROBE"
population[population=="Bass Coast (S)"] <- "BASS COAST"
population[population=="Greater Geelong (C)"] <- "GEELONG"
population[population=="Stonnington (C)"] <- "STONNINGTON"
population[population=="Gannawarra (S)"] <- "GANNAWARRA"
population[population=="Cardinia (S)"] <- "CARDINIA"
population[population=="Glen Eira (C)"] <- "GLEN EIRA"
population[population=="South Gippsland (S)"] <- "SOUTH GIPPSLAND"
population[population=="Manningham (C)"] <- "MANNINGHAM"
population[population=="Moreland (C)"] <- "MORELAND"
population[population=="Wellington (S)"] <- "WELLINGTON"
population[population=="Buloke (S)"] <- "BULOKE"
population[population=="Melton (C)"] <- "MELTON"
population[population=="Hobsons Bay (C)"] <- "HOBSONS BAY"
population[population=="Melbourne (C)"] <- "MELBOURNE"
population[population=="Strathbogie (S)"] <- "STRATHBOGIE"
population[population=="Maribyrnong (C)"] <- "MARIBYRNONG"
population[population=="Macedon Ranges (S)"] <- "MACEDON RANGES"
population[population=="Brimbank (C)"] <- "BRIMBANK"
population[population=="Surf Coast (S)"] <- "SURF COAST"
population[population=="Nillumbik (S)"] <- "NILLUMBIK"
population[population=="Ballarat (C)"] <- "BALLARAT"
population[population=="Yarra (C)"] <- "YARRA"
population[population=="Port Phillip (C)"] <- "PORT PHILLIP"
population[population=="Golden Plains (S)"] <- "GOLDEN PLAINS"
population[population=="Moira (S)"] <- "MOIRA"
population[population=="Mitchell (S)"] <- "MITCHELL"
population[population=="Yarra Ranges (S)"] <- "YARRA RANGES"
population[population=="Greater Hume Shire (A)"] <- "HUME"
population[population=="Bayside (A)"] <- "BAYSIDE"
population[population=="Central Goldfields (S)"] <- "CENTRAL GOLDFIELDS"
population[population=="Greater Shepparton (C)"] <- "SHEPPARTON"
population[population=="Monash (C)"] <- "MONASH"
population[population=="Kingston (C) (Vic.)"] <- "KINGSTON"
population[population=="Moonee Valley (C)"] <- "MOONEE VALLEY"
population[population=="Greater Bendigo (C)"] <- "BENDIGO"
population[population=="Murrindindi (S)"] <- "MURRINDINDI"
population[population=="Horsham (RC)"] <- "HORSHAM"
population[population=="Southern Grampians (S)"] <- "SOUTHERN GRAMPIANS"
population[population=="Banyule (C)"] <- "BANYULE"
population[population=="Knox (C)"] <- "KNOX"
population[population=="Moorabool (S)"] <- "MOORABOOL"
population[population=="Whitehorse (C)"] <- "WHITEHORSE"
population[population=="Hindmarsh (S)"] <- "HINDMARSH"
population[population=="Boroondara (C)"] <- "BOROONDARA"
population[population=="Darebin (C)"] <- "DAREBIN"
population[population=="Moyne (S)"] <- "MOYNE"
population[population=="Ararat (RC)"] <- "ARARAT"
population[population=="Whittlesea (C)"] <- "WHITTLESEA"
population[population=="Maroondah (C)"] <- "MAROONDAH"
population[population=="Hepburn (S)"] <- "HEPBURN"
population[population=="Warrnambool (C)"] <- "WARRNAMBOOL"
population[population=="Mount Alexander (S)"] <- "MOUNT ALEXANDER"
population[population=="Swan Hill (RC)"] <- "SWAN HILL"
population[population=="Indigo (S)"] <- "INDIGO"
population[population=="Wangaratta (RC)"] <- "WANGARATTA"
population[population=="Mansfield (S)"] <- "MANSFIELD"
population[population=="Pyrenees (S)"] <- "PYRENEES"
population[population=="Benalla (RC)"] <- "BENALLA"
population[population=="Mildura (RC)"] <- "MILDURA"
population[population=="Campaspe (S)"] <- "CAMPASPE"
population[population=="Towong (S)"] <- "TOWONG"
population[population=="Loddon (S)"] <- "LODDON"
population[population=="West Wimmera (S)"] <- "WEST WIMMERA"
population[population=="Corangamite (S)"] <- "CORANGAMITE"
population[population=="Northern Grampians (S)"] <- "NORTHERN GRAMPIANS"
population[population=="Alpine (S)"] <- "ALPINE"
population[population=="Glenelg (S)"] <- "GLENELG"
population[population=="Yarriambiack (S)"] <- "YARRIAMBIACK"
population[population=="Wodonga (C)"] <- "WODONGA"
population[population=="Queenscliffe (B)"] <- "QUEENSCLIFFE"
population[population=="Colac-Otway (S)"] <- "COLAC OTWAY"
	
