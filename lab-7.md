# Linear regression

## Objectives

In this lab, you will learn to:

-   Visualize the relationship between two numerical variables using a scatterplot
-   Fit a linear model to show how one numerical variable varies with another
-   Add a regression line to a scatterplot

## Introduction

Linear regression allows you to understand how much a numerical response variable varies per unit change in a numerical explanatory variable.

## Data

For this lab, we will use the `penguins` dataset from the [palmerpenguins](https://allisonhorst.github.io/palmerpenguins/index.html) package (Horst et al. 2020).

Instructions for installing and loading the data, and a description of the data, can be found on the lab tutorial [Comparing Means](comparing-means.html).

If you have the palmerpenguins package installed, all you need to do is load the packages and the data:


```r
library(tidyverse)
library(palmerpenguins)
data("penguins")
```

## Visualize two numerical variables

### Scatterplot

A common way to explore the relationship between two numerical variables is to graph them using a scatterplot. In the ggplot, this is accomplished using `geom_point()`.

Let's explore the penguins dataset to see if there is evidence of a relationship between body mass and flipper length in the 344 penguins that comprise the dataset:


```r
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(size = 2)
```

```
#> Warning: Removed 2 rows containing missing values (geom_point).
```

<img src="lab-7_files/figure-html/scatterplot-1.png" width="70%" style="display: block; margin: auto;" />

There certainly appears to be some relationship between the two variables.

## Correlation

You can calculate the correlation between the two variables with:


```r
cor(penguins$body_mass_g, penguins$flipper_length_mm, use = "complete.obs")
```

```
#> [1] 0.8712018
```

## Linear regression

To fit a linear regression model to the data:


```r
lm_body_flipper <-
  lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(lm_body_flipper)
```

```
#> 
#> Call:
#> lm(formula = body_mass_g ~ flipper_length_mm, data = penguins)
#> 
#> Residuals:
#>      Min       1Q   Median       3Q      Max 
#> -1058.80  -259.27   -26.88   247.33  1288.69 
#> 
#> Coefficients:
#>                    Estimate Std. Error t value Pr(>|t|)    
#> (Intercept)       -5780.831    305.815  -18.90   <2e-16 ***
#> flipper_length_mm    49.686      1.518   32.72   <2e-16 ***
#> ---
#> Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 
#> Residual standard error: 394.3 on 340 degrees of freedom
#>   (2 observations deleted due to missingness)
#> Multiple R-squared:  0.759,	Adjusted R-squared:  0.7583 
#> F-statistic:  1071 on 1 and 340 DF,  p-value: < 2.2e-16
```

The Y-intercept and slope can be found under the heading Coefficients. They are -5780.831 and 49.686, respectively. That means that for every 1 mm increase in flipper length, there is a corresponding 50 g increase in body mass.

Is the slope significantly different from zero? The P-value is near zero, much less than an alpha value of 0.05, so yes the slope is significantly different from zero.

In addition, the R-squared value of 0.759 indicates that flipper length explains 76% of the variation in body mass. That is a very strong relationship.

## Add regression line

Adding the regression line for a linear model is fairly straightforward in ggplot:


```r
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(size = 2) +
  geom_smooth(method = "lm", size = 2, color = "blue")
```

```
#> `geom_smooth()` using formula 'y ~ x'
```

```
#> Warning: Removed 2 rows containing non-finite values (stat_smooth).
```

```
#> Warning: Removed 2 rows containing missing values (geom_point).
```

<img src="lab-7_files/figure-html/regression-line-1.png" width="70%" style="display: block; margin: auto;" />

## Assignment

### Instructions

1.  Claim your repository for this lab using the GitHub Classrooms link posted on D2L.

    -   Your new repository will be created using this repository as a template: <https://github.com/BIOL275-MSUM/lab-7-template>
    -   The template repository has the necessary scripts and data files to get you started
    -   You do not need to create any new files

2.  Create a new RStudio project by cloning the repository from GitHub

3.  Read the questions on your README (you can also [read them on the template file on GitHub](https://github.com/BIOL275-MSUM/lab-7-template#readme))

4.  Fill out the R script to complete your analysis

5.  When you are satisfied, copy the R code to your README file, knit the document, commit everything, and push it to GitHub.

6.  Submit the link to your GitHub repo to the D2L assignment box for this lab so it can be graded.

## References

Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer Archipelago (Antarctica) penguin data. R package version 0.1.0. <https://allisonhorst.github.io/palmerpenguins/>
