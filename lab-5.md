# Data summarizing

## Objectives

In this lab, you will learn to:

-   Rename variables

-   Create new variables

-   Summarize a dataset

-   Summarize a dataset by groups

-   Visualize the relationship between variables

    -   Numerical and categorical variable
    -   Two numerical variables
    -   Three variables

## Introduction

In this lab you

-   Pick rows by their values using `filter()`
-   Reorder rows using `arrange()`
-   Pick columns by name using `select()`

### Prerequisites

In this lab you will use functions from the dplyr and ggplot2 packages. While you could load those packages individually, in this course you are encouraged to always load the entire tidyverse set of packages.

Load the tidyverse package:


```r
library(tidyverse)    # load the tidyverse package
```

```
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──
```

```
#> ✔ ggplot2 3.3.3     ✔ purrr   0.3.4
#> ✔ tibble  3.0.6     ✔ dplyr   1.0.4
#> ✔ tidyr   1.1.2     ✔ stringr 1.4.0
#> ✔ readr   1.4.0     ✔ forcats 0.5.1
```

```
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
```

### `diamonds`

In addition to getting us access to dplyr packages, loading the tidyverse package also lets us access the `diamonds` dataset from the ggplot2 package. This lab will use the `diamonds` dataset to show examples of renaming, mutating, and summarizing.

You can read more about the `diamonds` dataset in the previous lab, [Data subsetting](data-subsetting.html).

## Rename variables with `rename()`

The `rename()` function allows you to rename variables in a data frame. The first argument to `rename()` is the data frame. The other arguments specify which variables to rename, with the format `new_name = old_name`.

For example, say you want to rename the `x`, `y`, and `z` variables to `length`, `width`, and `height`:


```r
rename(diamonds, length = x, width = y, height = z)
```

```
#> # A tibble: 53,940 x 10
#>   carat cut       color clarity depth table price length width height
#>   <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int>  <dbl> <dbl>  <dbl>
#> 1 0.23  Ideal     E     SI2      61.5    55   326   3.95  3.98   2.43
#> 2 0.21  Premium   E     SI1      59.8    61   326   3.89  3.84   2.31
#> 3 0.23  Good      E     VS1      56.9    65   327   4.05  4.07   2.31
#> 4 0.290 Premium   I     VS2      62.4    58   334   4.2   4.23   2.63
#> 5 0.31  Good      J     SI2      63.3    58   335   4.34  4.35   2.75
#> 6 0.24  Very Good J     VVS2     62.8    57   336   3.94  3.96   2.48
#> # … with 53,934 more rows
```

Note the lack of quotes around the names of the data frame, the new variable names or the old variables names

The more arguments there are to a function, the harder it is to read. If your line of code gets too long, or is hard to read, try putting each argument on its own line like this:


```r
rename(
  diamonds, 
  length = x, 
  width = y, 
  height = z
)
```

This makes the code more readable. Just make sure you have commas after each argument except the last, and don't forget the closing parenthesis on its own line

## Create new variables with `mutate()` 

The `mutate()` function allows you to create a new variable in a data frame. As with other dplyr functions, the first argument to `mutate()` is the data frame. Additional arguments are name-value pairs. The name gives the name of the column in the output. The value is often a mathematical expression (in the case of numerical variables), a function, or some combination thereof.

To make viewing the new variables easier, first select a subset of variables from the `diamonds` data set using `select()` and give the new data frame the name `d2`:


```r
d2 <- select(diamonds, carat, price)
d2
```

```
#> # A tibble: 53,940 x 2
#>   carat price
#>   <dbl> <int>
#> 1 0.23    326
#> 2 0.21    326
#> 3 0.23    327
#> 4 0.290   334
#> 5 0.31    335
#> 6 0.24    336
#> # … with 53,934 more rows
```

Now use the new data frame `d2` to calculate the price per carat for each diamond. You can call the new variable anything you want. In this example, it is named `ppc` ("price per carat"):


```r
mutate(d2, ppc = price / carat)
```

```
#> # A tibble: 53,940 x 3
#>   carat price   ppc
#>   <dbl> <int> <dbl>
#> 1 0.23    326 1417.
#> 2 0.21    326 1552.
#> 3 0.23    327 1422.
#> 4 0.290   334 1152.
#> 5 0.31    335 1081.
#> 6 0.24    336 1400 
#> # … with 53,934 more rows
```

### `mutate()` an existing variable

You do not have to create an entirely new variable when using `mutate()`. For example, let's say you wanted to convert the price from US Dollars (USD) to Canadian Dollars (CAD). The current exchange rate is about 1 USD to 1.27 CAD. You can change the existing price variable by setting the new variable name to be the same as the old variable name:


```r
mutate(diamonds, price = price * 1.27)
```

```
#> # A tibble: 53,940 x 10
#>   carat cut       color clarity depth table price     x     y     z
#>   <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1 0.23  Ideal     E     SI2      61.5    55  414.  3.95  3.98  2.43
#> 2 0.21  Premium   E     SI1      59.8    61  414.  3.89  3.84  2.31
#> 3 0.23  Good      E     VS1      56.9    65  415.  4.05  4.07  2.31
#> 4 0.290 Premium   I     VS2      62.4    58  424.  4.2   4.23  2.63
#> 5 0.31  Good      J     SI2      63.3    58  425.  4.34  4.35  2.75
#> 6 0.24  Very Good J     VVS2     62.8    57  427.  3.94  3.96  2.48
#> # … with 53,934 more rows
```

## Summarize a data set with `summarize()`

You can summarize a data set using the `summarize()` function. Like other dplyr functions, the first argument to `summarize()` is a data frame. Additional arguments are name-value pairs, just like with `mutate()`. Values are set using various summary functions such as `mean()` or `sd()` (standard deviation). The difference is that whereas `mutate()` returns a data frame with the same number of rows as the input data frame, `summarize()` returns a data frame with only one row, and the only variables in the new data frame are the ones you named in `summarize()`. For example, to calculate the mean value of the `carat` variable, the code would look like this:


```r
summarize(diamonds, mean_carat = mean(carat))
```

```
#> # A tibble: 1 x 1
#>   mean_carat
#>        <dbl>
#> 1      0.798
```

You can calculate multiple summary statistics at the same time by providing a comma-separated list of name-value pairs. Because the line starts getting long, this example has each argument on its own line, but it would work just fine if everything was on the same line.


```r
summarize(
  diamonds, 
  mean_carat = mean(carat), 
  sd_carat = sd(carat)
)
```

### Summary functions

There are a wide variety of functions you can use to summarize a variable. Here are some examples:

-   `max()` - maximum value
-   `max()` - minimum value
-   `median()` - median value
-   `mode()` mode
-   `sd()` standard deviation
-   `var()` variance
-   `IQR()` interquartile range

For each of those functions, you must put the name of the variable you want to summarize *inside* the given function as the first argument.

There is also a special summary function `n()` which returns the number of rows, i.e. the sample size. Here is an example:


```r
summarize(diamonds, sampl_size = n())
```

```
#> # A tibble: 1 x 1
#>   sampl_size
#>        <int>
#> 1      53940
```

## Assignment

First, create a new R script (not Rmd) and load the tidyverse package.

For your assignment, you will work with the famous Edgar Anderson `iris` data set, which gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from ach of 3 species of iris. The species are *Iris setosa*, *versicolor*, and *virginica*.

You can print `iris` in the console to see the data set, but because it is a basic data frame and not an enhanced tibble, it will not print in a user-friendly manner. To have it print more nicely, turn it into a tibble first.

Add this to your script:


```r
iris <- as_tibble(iris) # so it prints a little nicer
```

Note that when you do this, iris will now show up in your Environment tab.

### Questions

Now use what you know from previous labs, and what you have learned from today's lab, to perform the following data manipulation tasks. Suggestion: for each question, put a comment like `# question 1` on the line before, so you can read your script more easily.

1.  Rename each variable so that it is all lower-case and uses an underscore `_` instead of a period `.` in the name (the recommended coding style in the [tidyverse style guide](https://style.tidyverse.org/syntax.html)). Print the resulting table.

2.  Convert the four numerical variables from cm to mm by multiplying by 10. Print the resulting table.

3.  Calculate sepal area and petal area (area is equal to length multiplied by width). Print a table with *only* the variables sepal area, petal area, and species.

4.  Calculate the following statistics for the *entire dataset* from the sepal length variable and print the resulting table:

    a.  sample size
    b.  maximum value
    c.  minimum value
    d.  range
    e.  median
    f.  first quartile (q1)
    g.  third quartile (q2)
    h.  inter-quartile range (iqr)

5.  Calculate the following statistics for each species from the petal width variable and print the resulting table:

    a.  sample size
    b.  mean
    c.  standard deviation
    d.  variance
    e.  standard error of the mean
    f.  approximate 95% confidence interval

6.  Visualize the relationship between petal length and species using a strip plot.

7.  Starting with the previous graph, add the mean and 95% confidence interval for each species

8.  Visualize the relationship between petal length, petal width, and species using a scatterplot. Map the two numerical variables to the x and y axes and map species to the color and shape aesthetics.

### Lab Report

After you have crafted working R code in your R script, *then* you should create your lab report using R Markdown

1.  Create an R Markdown document README.Rmd (you won't have a separate Rmd for the lab report in this lab)

2.  Add the [YAML header](r-markdown-documents.html#yaml-header). Change the title to "Lab 5"

3.  Copy the eight questions above and paste them in as text. Don't make each question its own heading; if you want headings, just label them Question 1, Question 2, etc.

4.  Add a code chunk after each question. Each chunk should either *print* a data frame or *plot* a graph, depending on what the question is asking for.

    You may create new objects with the assignment operator if you like.

5.  Add a section containing your [session info](session-info.html)

6.  Knit the document

7.  Commit all files and push to GitHub

8.  Submit the URL of your repo to D2L for grading

See the previous lab for more details on the steps listed above

## Grading Rubric

You will be assessed based on the following rubric:

1.  GitHub Classroom repository claimed

2.  Lab Report (README.md)

    a.  YAML header is correct
    b.  Has an introductory sentence or paragraph explaining what the lab report is for
    c.  Questions answered correctly
    d.  Session info included

3.  Submitted link to repository on D2L

## Further reading

Your lab manual, *R for Data Science* (R4DS), contains detailed instructions on mutating, grouping, and summarizing in [Chapter 5: Data transformation](https://r4ds.had.co.nz/transform.html).

You do not need to read the chapter, but it would certainly help solidify the concepts introduced in this lab.

If you do want to read the chapter and try their examples in your own R Script then don't forget to:

1.  Install the nycflights13 package as described in [R4DS Section 1.4.4 Other Packages](https://r4ds.had.co.nz/introduction.html?q=nycflights13#other-packages)
2.  Load the tidyverse and nycflights13 packages as described in [R4DS Section 5.1.1 Prerequisites](https://r4ds.had.co.nz/transform.html#prerequisites-2).
