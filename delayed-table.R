## This is a little R script to make tables by group so students can make barplots


final.table <- rbind(table(delayed_trials$in.month, delayed_trials$Group),
                     table(delayed_trials$in.year, delayed_trials$Group),
                     table(delayed_trials$insurance, delayed_trials$Group))

write.csv(final.table, "delayed-table.csv")