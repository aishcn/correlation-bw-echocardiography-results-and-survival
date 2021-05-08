# ecar <- read.table("/Users/fancheng/Downloads/Mod_echocardiogram.data", sep=",", header=FALSE, na.string="?")
# colnames(ecar) <- c("survivalM", "alive", "age", "pe", "fs","epss", "lvdd", "wmScore", "wmIndex", "mult", "name", "group", "alive1")
#ecar$alive <- as.factor(ecar$alive)
#ecar$pe <- as.factor(ecar$pe)

library(ggplot2)
if (FALSE) {
g_sM <- ggplot(ecar, aes(survivalM))
g_sM <- g_sM + geom_histogram(aes(fill="tomato"), binwidth = 1) + labs(title="Histogram of Survival Months")
g_sM <- g_sM + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_sM

g_age <- ggplot(ecar, aes(age))
g_age <- g_age + geom_histogram(aes(fill="tomato"), binwidth = 1) + labs(title="Histogram of Ages with heart attacks")
g_age <- g_age + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_age

g_fs <- ggplot(ecar, aes(fs))
g_fs <- g_fs + geom_histogram(aes(fill="tomato"), binwidth = 0.05) + labs(title="Histogram of fractional-shortening")
g_fs <- g_fs + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_fs

g_epss <- ggplot(ecar, aes(epss))
g_epss <- g_epss + geom_histogram(aes(fill="tomato"), binwidth = 1) + labs(title="Histogram of E-point septal separation")
g_epss <- g_epss + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_epss

g_lvdd <- ggplot(ecar, aes(lvdd))
g_lvdd <- g_lvdd + geom_histogram(aes(fill="tomato"), binwidth = 0.05) + labs(title="Histogram of left ventricular end-diastolic dimension")
g_lvdd <- g_lvdd + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_lvdd

g_wmi <- ggplot(ecar, aes(wmIndex))
g_wmi <- g_wmi + geom_histogram(aes(fill="tomato"), binwidth = 0.1) + labs(title="Histogram of wall-motion index")
g_wmi <- g_wmi + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_wmi

g_alive <- ggplot(ecar, aes(alive))
g_alive <- g_alive + geom_bar(aes(fill="tomato"), width=0.5) + labs(title="Barplot of Alive status")
g_alive <- g_alive + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_alive

g_pe <- ggplot(ecar, aes(pe))
g_pe <- g_pe + geom_bar(aes(fill="tomato"), width=0.5) + labs(title="Barplot of pericardial-effusion")
g_pe <- g_pe + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_pe
}

if (FALSE) {
g_sM_alive <- ggplot(ecar, aes(x=alive, y=survivalM))
g_sM_alive <- g_sM_alive + geom_violin(aes(fill="tomato"), width=0.5, trim=F) + labs(title="survival months v.s. alive")
g_sM_alive <- g_sM_alive + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_sM_alive

g_sM_age <- ggplot(ecar, aes(x=age, y=survivalM))
g_sM_age <- g_sM_age + geom_point(aes(col=alive), size=3) + labs(title="survival months v.s. age")
g_sM_age <- g_sM_age + theme(plot.title=element_text(face="bold", hjust=0.5))
g_sM_age

g_sM_pe <- ggplot(ecar, aes(x=pe, y=survivalM))
g_sM_pe <- g_sM_pe + geom_violin(aes(fill="tomato"), width=0.5, trim=F) + labs(title="survival months v.s. pe")
g_sM_pe <- g_sM_pe + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_sM_pe

g_sM_fs <- ggplot(ecar, aes(x=fs, y=survivalM))
g_sM_fs <- g_sM_fs + geom_point(aes(col=alive), size=3) + labs(title="survival months v.s. fs")
g_sM_fs <- g_sM_fs + theme(plot.title=element_text(face="bold", hjust=0.5))
g_sM_fs

g_sM_epss <- ggplot(ecar, aes(x=epss, y=survivalM))
g_sM_epss <- g_sM_epss + geom_point(aes(col=alive), size=3) + labs(title="survival months v.s. epss")
g_sM_epss <- g_sM_epss + theme(plot.title=element_text(face="bold", hjust=0.5))
g_sM_epss

g_sM_lvdd <- ggplot(ecar, aes(x=lvdd, y=survivalM))
g_sM_lvdd <- g_sM_lvdd + geom_point(aes(col=alive), size=3) + labs(title="survival months v.s. lvdd")
g_sM_lvdd <- g_sM_lvdd + theme(plot.title=element_text(face="bold", hjust=0.5))
g_sM_lvdd

g_sM_wmi <- ggplot(ecar, aes(x=wmIndex, y=survivalM))
g_sM_wmi <- g_sM_wmi + geom_point(aes(col=alive), size=3) + labs(title="survival months v.s. WM index")
g_sM_wmi <- g_sM_wmi + theme(plot.title=element_text(face="bold", hjust=0.5))
g_sM_wmi
}

g_45 <- ggplot(ecar, aes(x=pe, y=fs))
g_45 <- g_45 + geom_violin(aes(fill="tomato"), width=0.5, trim=F) + labs(title="fs v.s pe")
g_45 <- g_45 + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_45

g_67 <- ggplot(ecar, aes(x=epss, y=lvdd))
g_67 <- g_67 + geom_point(aes(col=alive, size=survivalM)) + labs(title="lvdd v.s. epss")
g_67 <- g_67 + theme(plot.title=element_text(face="bold", hjust=0.5))
g_67

if(FALSE){
g_sM_pe <- ggplot(ecar, aes(x=pe, y=survivalM))
g_sM_pe <- g_sM_pe + geom_violin(aes(fill="tomato"), width=0.5, trim=F) + labs(title="survival months v.s. pe")
g_sM_pe <- g_sM_pe + theme(plot.title=element_text(face="bold", hjust=0.5), legend.position="none")
g_sM_pe
}

g_56 <- ggplot(ecar, aes(x=epss, y=fs))
g_56 <- g_56 + geom_point(aes(col=alive, size=survivalM)) + labs(title="fs v.s. epss")
g_56 <- g_56 + theme(plot.title=element_text(face="bold", hjust=0.5))
g_56

g_68 <- ggplot(ecar, aes(x=epss, y=wmIndex))
g_68 <- g_68 + geom_point(aes(col=alive, size=survivalM)) + labs(title="wmIndex v.s. epss")
g_68 <- g_68 + theme(plot.title=element_text(face="bold", hjust=0.5))
g_68

g_57 <- ggplot(ecar, aes(x=lvdd, y=fs))
g_57 <- g_57 + geom_point(aes(col=alive, size=survivalM)) + labs(title="fs v.s. lvdd")
g_57 <- g_57 + theme(plot.title=element_text(face="bold", hjust=0.5))
g_57

g_36 <- ggplot(ecar, aes(x=epss, y=age))
g_36 <- g_36 + geom_point(aes(col=alive, size=survivalM)) + labs(title="epss v.s. age")
g_36 <- g_36 + theme(plot.title=element_text(face="bold", hjust=0.5))
g_36

library(gridExtra)
#mg <- grid.arrange(g_sM, g_alive, g_age, g_pe, g_fs, g_epss, g_lvdd, g_wmi, ncol=1)

#mg <- grid.arrange(g_sM, g_sM_alive, g_sM_age, g_sM_pe, g_sM_fs, g_sM_epss, g_sM_lvdd, g_sM_wmi, ncol=2)
# mg <- grid.arrange(g_67, g_56, g_68, ncol=1)
#mg <- grid.arrange(g_45, g_36, ncol=1)

epca <- na.omit(ecar)
pca <- prcomp(epca[,c(3,5:8)], center=TRUE, scale.=TRUE)
alive <- epca$alive
survivalM <- epca$survivalM
new <- pca$x
new1 <- cbind(survivalM, alive, new)
g_pca2 <- ggplot(new1, aes(x=PC1, y=PC2))
g_pca2 <- g_pca2 + geom_point(aes(col=alive,size=survivalM)) + labs(title="PCA of five numeric variables", x="PC1 (43.53%)", y="PC2 (19.86%)")
g_pca2 <- g_pca2 + theme(plot.title=element_text(face="bold", hjust=0.5))
g_pca2

#ggsave("/Users/fancheng/Downloads/echocar_non_cor.png", mg, width=20, height=29, units="cm")
ggsave("/Users/fancheng/Downloads/echocar_age_epss.png", g_36)
