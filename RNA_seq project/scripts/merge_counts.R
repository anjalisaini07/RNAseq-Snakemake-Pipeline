files <- list.files("results/counts", pattern="tabular$", full.names=TRUE)

count_list <- lapply(files, function(f){

    df <- read.table(f, header=TRUE)

    return(df)
})

merged_counts <- Reduce(function(x, y)
    merge(x, y, by="Geneid", all=TRUE),
    count_list)

write.table(
    merged_counts,
    "results/counts/combined_counts.txt",
    sep="\t",
    quote=FALSE,
    row.names=FALSE
)
