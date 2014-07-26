---
title       : Mortgage App
subtitle    : 
author      : Rowen Remis R. Iral
job         : Data Scientist/IT Engineer/Business & Systems Admin/Marketer
framework   : html5slides        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow     # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
url:
  lib: /libraries
  assets: /assets
knit        : slidify::knit2slides
---

## Mortgage App
### An App to Calculate your Monthly Payment Requirement


--- .class #id 

## Monthly Payment Formula
### This is the formula
From: http://www.wikihow.com/Calculate-Mortgage-Payments

$$M = P * \frac{i * (1 + i)^n}{(1+i)^n-1}$$

This computes M the monthly payment amount.

--- .class #id 

## Details

- M = monthly payment
- P = principal amount
- i = interest rate (percentage)
- n = number of payments

- Monthly payment (M)
- Principal amount (P)

--- .class #id 

## R Code Snippets

```r
P <- 100 ## amount
i <- 10 ## interest rate %
i <- i/100 ## Get the percentage of i
n <- 12 ## months to pay

M <- P * ((i * (1 + i) ^n)/(((1+i)^n)-1))
out <- round(M,2)
print(paste("Monthly payment:",out))
```

```
## [1] "Monthly payment: 14.68"
```

--- .class #id 

## Thank you.
### Github address
https://github.com/wenmi01/DevelopingDataProducts_Assessment

Mortgage App (2014)
