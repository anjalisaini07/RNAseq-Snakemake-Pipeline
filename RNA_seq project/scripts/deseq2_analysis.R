library("DESeq2")

counts <- read.table(
    "results/counts/combined_counts.txt",
    header=TRUE,
    row.names=1
)

sample_info <- data.frame(
    row.names = colnames(counts),
    condition = c(
        "control",
        "control",
        "control",
        "treated",
        "treated",
        "treated"
    )
)

dds <- DESeqDataSetFromMatrix(
    countData = counts,
    colData = sample_info,
    design = ~ condition
)

dds <- DESeq(dds)

res <- results(dds)

write.csv(
    as.data.frame(res),
    file="results/deseq2_results.csv"
)

png("results/volcano_plot.png")

plot(
    res$log2FoldChange,
    -log10(res$pvalue),
    pch=20,
    main="Volcano Plot",
    xlab="Log2 Fold Change",
    ylab="-Log10 p-value"
)

dev.off()
