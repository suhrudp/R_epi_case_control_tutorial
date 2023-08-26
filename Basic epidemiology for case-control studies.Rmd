# BASIC EPIDEMIOLOGICAL ANALYSIS FOR CASE-CONTROL STUDIES

## LOAD LIBRARIES

```{r}
library(readxl)
library(epiR)
```

## IMPORT DATA

```{r}
df <- read_excel(file.choose())
attach(df)
View(df)
```

## BASIC CALCULATIONS

```{r}
table(Diet, Obesity)
table(Diet, Obesity, Age)
arr1 <- array(c(6,20,21,14,
                12,26,27,12,
                5,31,14,12),
              dim=c(2,2,3),
              dimnames=list(Diet=c("Yes", "No"),
                            Obesity=c("<30", "≥30"),
                            Age=c("30-40", "40-50", "50-60")))
```

## 2 BY 2 TABLE ANALYSIS

```{r}
mat1 <- c(62, 23, 38, 77)
epi.2by2(dat=mat1, method="case.control", interpret=T)
```

## COCHRAN-MANTEL-HAENSZEL CHI-SQUARED TEST FOR STRATIFIED ANALYSIS

```{r}
mantelhaen.test(arr1)
```

## 
