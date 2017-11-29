## This is a little R script to make tables by group so students can make barplots


final.table <- rbind(table(trial$in.month, trial$Group),
                     table(trial$in.year, trial$Group),
                     table(trial$insurance, trial$Group))

write.csv(final.table, "delayed-table.csv")