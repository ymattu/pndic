setwd("/Users/matsumurayuuya/Desktop/tmp/pndic")

pndic_ja <- read.table("http://www.lr.pi.titech.ac.jp/~takamura/pubs/pn_ja.dic",
                    sep = ":",
                    col.names = c("term", "kana", "pos", "value"),
                    colClasses = c("character", "character", "factor", "numeric"),
                    fileEncoding = "Shift_JIS")

save(pndic_ja, file = "pndic_ja.rda")
write.csv(pndic_ja, "pndic_ja.csv", row.names = FALSE, quote = FALSE)
