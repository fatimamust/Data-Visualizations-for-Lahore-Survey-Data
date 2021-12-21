library(dslabs)
data(murders)
library(ggplot2)
library(ggrepel)
library(ggthemes)
library(tidyverse)
library(dplyr)

head(violence_dframe)

violence_dframe %>% filter(!is.na(updated_gender)) %>% ggplot(aes(factor(age_categories),less_expect_of_state_rowmean, fill=updated_gender)) + geom_boxplot(outlier.shape=NA, alpha=0.1) + geom_point(aes(col=updated_gender),alpha=0.1) + labs(y="Expectations of State", x="Age Categories") + scale_x_discrete(breaks=c(1,2,3,4,5,6,7,8),labels=c("18-25", "25-30", "30-35","35-40","40-50","50-60","60-70","70-100")) + scale_fill_discrete(name = "Gender") + geom_jitter(aes(col=updated_gender),alpha=0.3)
violence_dframe %>% filter(!is.na(updated_gender)) %>% ggplot(aes(factor(res_prf_occupation),less_expect_of_state_rowmean)) + geom_boxplot(alpha=0.1) + geom_point(alpha=0.1) + labs(y="Expectations of State", x="Occupation") + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+ geom_jitter(alpha=0.1)
violence_dframe %>% filter(!is.na(updated_gender)) %>% ggplot(aes(factor(res_prf_education),less_expect_of_state_rowmean)) + geom_boxplot(alpha=0.1) + geom_point(alpha=0.1) + labs(y="Expectations of State", x="Education") + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+ geom_jitter(alpha=0.1)
violence_dframe %>% filter(!is.na(updated_gender)) %>% ggplot(aes(factor(res_prf_religion),less_expect_of_state_rowmean)) + geom_boxplot(alpha=0.1) + geom_point(alpha=0.1) + labs(y="Expectations of State", x="Religion") + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+ geom_jitter(alpha=0.1)