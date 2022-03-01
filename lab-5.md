# Lab 5: Frequency data

## Objectives

In this lab, you will learn to:

1.  Test whether frequency data fits a proportional probability model
2.  Test whether frequency data fits a Poisson probability model

## Getting started

Go to D2L and follow the link to claim your Lab 6 repository from GitHub Classroom.

Create four scripts:

-   **proportional.R** (for the first example problem)
-   **poisson.R** (for the second example problem)
-   **cats.R** (for the first assignment problem)
-   **truffles.R** (for the second assignment problem)

## Proportional probability model

Chapter 8, Section 2 of Whitlock & Schulter (2020) introduced you to the idea of the proportional probability model using an example about the number of births on days of the week.

Below, you will see how the question can be worked in R using the tidyverse functions you learned in previous labs. The authors of the textbook also provide [code using mostly base R functions](https://whitlockschluter3e.zoology.ubc.ca/RLabs/R_tutorial_Frequency_data.html), but for this lab you should use tidyverse functions.


```r
library(tidyverse)
```

### Read the data

First read the data using `read_csv()` from the readr package (as opposed to the base function `read.csv()`):


```r
birth_data <- read_csv("http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08e1DayOfBirth.csv")
```

```
#> Rows: 350 Columns: 1
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (1): day
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```r
birth_data
```

```
#> # A tibble: 350 × 1
#>   day   
#>   <chr> 
#> 1 Sunday
#> 2 Sunday
#> 3 Sunday
#> 4 Sunday
#> 5 Sunday
#> 6 Sunday
#> # … with 344 more rows
```

The data set is a random sample of babies born in 1999 in the United States. As you can see, the data set contains 350 rows, each representing a baby. The only column is `day`, a categorical variable which contains the day of the week on which the baby was born.

### Make a bar chart

As with most data sets, the first order of business is to explore the data. We can start by looking at the distribution of the `day` variable using a bar chart:


```r
ggplot(data = birth_data) +
  geom_bar(mapping = aes(x = day))
```

<img src="lab-5_files/figure-html/birth-day-bar-chart-1.png" width="70%" style="display: block; margin: auto;" />

### Fix the factor levels

When we read the data, R didn't know what kind of variable `day` was, so it played it conservatively and treated it as character (`chr`) data, which has no inherent order or enumerated list of possible values. When we plot the variable, ggplot simply puts them in alphabetical order.

What we need to do is change the `day` variable so that it is a factor (`fct`) data type with enumerated values in a particular order. The first step is to create a vector with the days of the week in the correct order:


```r
days_of_week <- c("Monday", "Tuesday", "Wednesday", "Thursday", 
                  "Friday", "Saturday", "Sunday")
days_of_week
```

```
#> [1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"    "Saturday" 
#> [7] "Sunday"
```

Then we can use `mutate()` to create a new variable using `factor()`, and use a little tidyverse magic from the forcats and stringr packages to shorten the day names for easier viewing. Let's call the new variable `day_fct` and `day_short`.


```r
birth_data <- 
  mutate(
    birth_data, 
    day_fct = factor(day, levels = days_of_week),
    day_short = fct_relabel(day_fct, str_sub, start = 1, end = 3)
  )
birth_data
```

```
#> # A tibble: 350 × 3
#>   day    day_fct day_short
#>   <chr>  <fct>   <fct>    
#> 1 Sunday Sunday  Sun      
#> 2 Sunday Sunday  Sun      
#> 3 Sunday Sunday  Sun      
#> 4 Sunday Sunday  Sun      
#> 5 Sunday Sunday  Sun      
#> 6 Sunday Sunday  Sun      
#> # … with 344 more rows
```

Notice the data types listed under the variable names. When you have a factor variable in your data set, you can find out what the levels are using the levels function.


```r
levels(birth_data$day_fct)
```

```
#> [1] "Monday"    "Tuesday"   "Wednesday" "Thursday"  "Friday"    "Saturday" 
#> [7] "Sunday"
```

```r
levels(birth_data$day_short)
```

```
#> [1] "Mon" "Tue" "Wed" "Thu" "Fri" "Sat" "Sun"
```

Changing character variables to factors is common in R when you are working with categorical data, so you should become familiar with the `factor()` function. To learn more about dealing with factors in R, see the chapter [Factors](https://r4ds.had.co.nz/factors.html) in *R for Data Science*. In the example above, abbreviating the week names was fun, but it's not something you are expected to learn and apply on your own.

### Make a better bar chart

Now we're ready to plot the data again. All we need to do is swap `x = day` with `x = day_short`.

This time, let's also change the y-axis label to "Frequency" and remove the x-axis label altogether as it's pretty obvious what it represents. To give it a little spice, we can set the fill color to MSUM red `"#a6192e"`.


```r
ggplot(data = birth_data) +
  geom_bar(mapping = aes(x = day_short), fill = "#a6192e") +
  labs(y = "Frequency", x = NULL)
```

<img src="lab-5_files/figure-html/birth-day-bar-chart-2-1.png" width="70%" style="display: block; margin: auto;" />

### Create a frequency table

The other common method of visualizing frequency data for a categorical variable is with a frequency table. This is quite easy with the `count()` function in the dplyr package.


```r
birth_freq_table <- count(birth_data, day_fct)
birth_freq_table
```

```
#> # A tibble: 7 × 2
#>   day_fct       n
#>   <fct>     <int>
#> 1 Monday       41
#> 2 Tuesday      63
#> 3 Wednesday    63
#> 4 Thursday     47
#> 5 Friday       56
#> 6 Saturday     47
#> # … with 1 more row
```

### $\chi^2$ goodness-of-fit test

The next step is to conduct a $\chi^2$ goodness-of-fit test, which can be done with the `chisq.test()` function. You can see how Whitlock & Schluter answer the question using base R functions [on the book website](https://whitlockschluter.zoology.ubc.ca/r-code/rcode08). Luckily, there is always a tidyverse way to do things. With some inspiration from [Tidy chi-square testing](http://ritsokiguess.site/docs/2018/04/12/tidy-chi-squared-testing/) by Ken on the *R, it's okay I guess* blog, here is one way to do it.

First, you need the observed frequencies:


```r
birth_freqs <- birth_freq_table$n
birth_freqs
```

```
#> [1] 41 63 63 47 56 47 33
```

Second, you need a vector of expected probabilities, which if you will recall from the example is:


```r
birth_probs <- c(52, 52, 52, 52, 53, 52, 52) / 365
birth_probs
```

```
#> [1] 0.1424658 0.1424658 0.1424658 0.1424658 0.1452055 0.1424658 0.1424658
```

Next, you conduct the $\chi^2$ goodness-of-fit test:


```r
chisq.test(x = birth_freqs, p = birth_probs)
```

```
#> 
#> 	Chi-squared test for given probabilities
#> 
#> data:  birth_freqs
#> X-squared = 15.057, df = 6, p-value = 0.01982
```

The final step is to interpret your results. If you were conducting this analysis by calculator, you might have calculated the test statistic yourself and looked up a critical value from a statistical table to compare it to.

In R, you can get the exact $P$-value quite easily, so all you need to do is compare the $P$-value to the $\alpha$-level of your choice, which in this case will be 0.05.

Thus, your interpretation would be:

> Because the $P$-value of 0.02 is less than the $\alpha$-level of 0.05, I reject the null hypothesis. Therefore, births do not fit a proportional model.

If you were writing a paper in APA format, you would write:

> The proportion of births differed by day of the week, $\chi^2(6,N=50)=15.057$ , $p=0.020$.

## Poisson probability model

Chapter 8, Section 5 of Whitlock & Schluter (2022) contained an example of using a $\chi^2$ goodness-of-fit test to tell whether extinctions occur randomly in the geologic record. The null distribution in this case was that the number of extinctions in 76 blocks of time showed a Poisson distribution.

As with the previous example, Whitlock & Schluter provide code to perform this analysis, using base R functions, [on the book website](https://whitlockschluter3e.zoology.ubc.ca/RLabs/R_tutorial_Frequency_data.html).

Here you can see how to approach this question in R using tidyverse functions.

### Read the data


```r
extinct_data <- read_csv("http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08e6MassExtinctions.csv")
extinct_data
```

There are 76 time periods. The variable `numberOfExtinctions` gives the number of extinctions in that time period.

Before we go on, let's rename that unruly variable `numberOfExtinctions` so it matches our usual snake_case style:


```r
extinct_data <- 
  extinct_data %>% 
  rename(n_extinct = numberOfExtinctions)
```

### Bar Chart

Starting with the raw data, we can use `geom_bar()` to visualize the distribution of the `n_extinct` variable as a bar chart.


```r
ggplot(data = extinct_data) +
  geom_bar(mapping = aes(x = n_extinct), fill = "#a6192e") +
  labs(y = "Frequency", x = "Number of Extinctions")
```

<img src="lab-5_files/figure-html/extinct-bar-chart-1.png" width="70%" style="display: block; margin: auto;" />

### Frequency table

Create a frequency table using `count()`. This time, use the print function to force R to print all rows, not just the first 10 (the default for tibbles). `Inf` means infinity, so `n = Inf` means print all the rows.


```r
extinct_data %>% 
  count(n_extinct, name = "observed_freq") %>% 
  print(n = Inf)
```

```
#> # A tibble: 14 × 2
#>    n_extinct observed_freq
#>        <dbl>         <int>
#>  1         1            13
#>  2         2            15
#>  3         3            16
#>  4         4             7
#>  5         5            10
#>  6         6             4
#>  7         7             2
#>  8         8             1
#>  9         9             2
#> 10        10             1
#> 11        11             1
#> 12        14             1
#> 13        16             2
#> 14        20             1
```

Note that some numbers of extinctions are missing because no block of time had that number of extinctions. These include 0, 12, 13, 15, 17, 18, 19, and anything above 20.

Before we can continue, we should add these missing categories, which is fairly easy with the `complete()` function from tidyr.


```r
extinct_freq_table <-
  extinct_data %>% 
  count(n_extinct, name = "observed_freq") %>% 
  complete(
    n_extinct = 0:20, 
    fill = list(observed_freq = 0)
  ) %>% 
  print(n = Inf)
```

```
#> # A tibble: 21 × 2
#>    n_extinct observed_freq
#>        <dbl>         <int>
#>  1         0             0
#>  2         1            13
#>  3         2            15
#>  4         3            16
#>  5         4             7
#>  6         5            10
#>  7         6             4
#>  8         7             2
#>  9         8             1
#> 10         9             2
#> 11        10             1
#> 12        11             1
#> 13        12             0
#> 14        13             0
#> 15        14             1
#> 16        15             0
#> 17        16             2
#> 18        17             0
#> 19        18             0
#> 20        19             0
#> 21        20             1
```

`complete()` needs two arguments here. First, a vector of numbers containing all possible values of `n_extinct`. We could have done this with the `c()` function, for example `c(0, 1, …, 19, 20)`, but `0:20` is a shorthand for this.

The bit at the end, `fill = list(observed_freq = 0)`, tells R to put a zero for `observed_freq` whenever it adds a new row.

### Estimate the mean

There are a couple of ways to accomplish this:


```r
# tidyverse method
mean_extinct <-
  extinct_data %>% 
  summarize(mean = mean(n_extinct)) %>% 
  pull(mean)
mean_extinct
```

```
#> [1] 4.210526
```

```r
# dollar sign method
mean_extinct <- mean(extinct_data$n_extinct)
mean_extinct
```

```
#> [1] 4.210526
```

### Expected frequencies

Calculate the expected frequencies under the null distribution, a Poisson distribution, using the estimated mean. Here we will do this for the categories we have, up to 20 extinctions, but remember there is a non-zero probability of having 21 extinctions, or 22, or 23, etc. We will calculate those later.


```r
expected_proportions <- dpois(0:20, lambda = mean_extinct)
expected_proportions
```

```
#>  [1] 1.483856e-02 6.247813e-02 1.315329e-01 1.846076e-01 1.943238e-01
#>  [6] 1.636411e-01 1.148358e-01 6.907419e-02 3.635484e-02 1.700811e-02
#> [11] 7.161310e-03 2.741171e-03 9.618145e-04 3.115189e-04 9.368989e-05
#> [16] 2.629892e-05 6.920767e-06 1.714122e-06 4.009642e-07 8.885633e-08
#> [21] 1.870660e-08
```

We can add these to the frequency distribution with:


```r
extinct_freq_table <-
  extinct_freq_table %>% 
  mutate(
    expected_prop = expected_proportions, # add proportions
    expected_freq = expected_prop * 76    # calculate frequencies
  ) %>% 
  print(n = Inf)
```

```
#> # A tibble: 21 × 4
#>    n_extinct observed_freq expected_prop expected_freq
#>        <dbl>         <int>         <dbl>         <dbl>
#>  1         0             0  0.0148          1.13      
#>  2         1            13  0.0625          4.75      
#>  3         2            15  0.132          10.0       
#>  4         3            16  0.185          14.0       
#>  5         4             7  0.194          14.8       
#>  6         5            10  0.164          12.4       
#>  7         6             4  0.115           8.73      
#>  8         7             2  0.0691          5.25      
#>  9         8             1  0.0364          2.76      
#> 10         9             2  0.0170          1.29      
#> 11        10             1  0.00716         0.544     
#> 12        11             1  0.00274         0.208     
#> 13        12             0  0.000962        0.0731    
#> 14        13             0  0.000312        0.0237    
#> 15        14             1  0.0000937       0.00712   
#> 16        15             0  0.0000263       0.00200   
#> 17        16             2  0.00000692      0.000526  
#> 18        17             0  0.00000171      0.000130  
#> 19        18             0  0.000000401     0.0000305 
#> 20        19             0  0.0000000889    0.00000675
#> 21        20             1  0.0000000187    0.00000142
```

Note that we added the expected proportions, and then calculated the expected number of extinctions by multiplying the expected proportions by 76, the number of time blocks.

### Graph expected frequencies

For this, we can't use `geom_bar()`, which counts the observations for us, because we have to use the frequency table in which they are already counted. The solution is to use `geom_col()` (col is short for column) instead.

Then we can add a `geom_line()` for the expected frequencies.


```r
ggplot(data = extinct_freq_table,
       mapping = aes(x = n_extinct)) +
  geom_col(mapping = aes(y = observed_freq), fill = "#a6192e") +
  geom_line(mapping = aes(y = expected_freq), size = 2) +
  labs(y = "Frequency", x = "Number of Extinctions")
```

<img src="lab-5_files/figure-html/unnamed-chunk-8-1.png" width="70%" style="display: block; margin: auto;" />

### $\chi^2$ goodness-of-fit test

We have everything we need to conduct a $\chi^2$ goodness-of-fit test in our frequency table, namely the observed and expected frequencies for each number of extinctions. The problem is that some categories have frequencies less than 1, and there are too many categories with frequencies less than 5.

To resolve this, we can combine some categories. Before we can do that, we need to convert `n_extinct` to a factor data type. Let's create a new tibble to hold this frequency table of combined categories.


```r
combined_freq_table <-
  extinct_freq_table %>% 
  select(-expected_prop) %>% 
  mutate(n_extinct = factor(n_extinct)) %>% 
  print()
```

```
#> # A tibble: 21 × 3
#>   n_extinct observed_freq expected_freq
#>   <fct>             <int>         <dbl>
#> 1 0                     0          1.13
#> 2 1                    13          4.75
#> 3 2                    15         10.0 
#> 4 3                    16         14.0 
#> 5 4                     7         14.8 
#> 6 5                    10         12.4 
#> # … with 15 more rows
```

Note that we also dropped the `expected_prop` variable, which we no longer need.

Now we can modify `n_extinct` so it contains the new factor levels:


```r
combined_freq_table <- 
  combined_freq_table %>% 
  mutate(n_extinct = fct_collapse(
    n_extinct,
    `0 or 1` = "0",
    `0 or 1` = "1",
    `2` = "2",
    `3` = "3",
    `4` = "4",
    `5` = "5",
    `6` = "6",
    `7` = "7",
    other_level = "8 or more",
  )) %>% 
  print()
```

```
#> # A tibble: 21 × 3
#>   n_extinct observed_freq expected_freq
#>   <fct>             <int>         <dbl>
#> 1 0 or 1                0          1.13
#> 2 0 or 1               13          4.75
#> 3 2                    15         10.0 
#> 4 3                    16         14.0 
#> 5 4                     7         14.8 
#> 6 5                    10         12.4 
#> # … with 15 more rows
```

Note that the new factor level names are surrounded by backticks, not single quotes. The backticks are necessary because the new values start with numbers or special characters. If our new values had names that started with letters, the backticks would be unnecessary. See `??fct_collapse` for an example.

There one more issue to solve. The frequency table above should have expected frequencies that add up to 76, but it doesn't:


```r
missing_probabilities <- 76 - sum(combined_freq_table$expected_freq)
missing_probabilities
```

```
#> [1] 3.516995e-07
```

That's because we did not calculate probabilities for categories larger than 20 extinctions. Those probabilities are small, but we still want to include them. So let's add a new row that includes those:


```r
combined_freq_table %>% 
  add_row(
    n_extinct = factor("8 or more"),
    observed_freq = 0,
    expected_freq = missing_probabilities,
    .before = 1
  )
```

```
#> # A tibble: 22 × 3
#>   n_extinct observed_freq expected_freq
#>   <fct>             <dbl>         <dbl>
#> 1 8 or more             0   0.000000352
#> 2 0 or 1                0   1.13       
#> 3 0 or 1               13   4.75       
#> 4 2                    15  10.0        
#> 5 3                    16  14.0        
#> 6 4                     7  14.8        
#> # … with 16 more rows
```

Now we can use `summarize()` to add up the observed and expected frequencies for our newly combined categories. Before we do, however, there is an issue we must solve.


```r
combined_freq_table <-
  combined_freq_table %>% 
  group_by(n_extinct) %>% 
  summarize(
    observed_freq = sum(observed_freq),
    expected_freq = sum(expected_freq)
  ) %>% 
  print()
```

```
#> # A tibble: 8 × 3
#>   n_extinct observed_freq expected_freq
#>   <fct>             <int>         <dbl>
#> 1 0 or 1               13          5.88
#> 2 2                    15         10.0 
#> 3 3                    16         14.0 
#> 4 4                     7         14.8 
#> 5 5                    10         12.4 
#> 6 6                     4          8.73
#> # … with 2 more rows
```

And finally, we can conduct the $\chi^2$ goodness-of-fit test!


```r
chisq.test(x = combined_freq_table$observed_freq,
           p = combined_freq_table$expected_freq / 76)
```

```
#> Warning in chisq.test(x = combined_freq_table$observed_freq, p =
#> combined_freq_table$expected_freq/76): Chi-squared approximation may be
#> incorrect
```

```
#> 
#> 	Chi-squared test for given probabilities
#> 
#> data:  combined_freq_table$observed_freq
#> X-squared = 23.95, df = 7, p-value = 0.001163
```

The warning here is caused by the fact that one of the expected frequencies is less than 5. However, we have been careful not to violate the assumptions of the $\chi^2$ goodness-of-fit test (no expected frequencies less than 1, no more than 20% of categories with expected frequencies less than 5).

Looking at the results, you will notice that it shows the test was conducted with 7 degrees of freedom.

Recall from lecture that degrees of freedom are calculated as:

$df=n-1-(\operatorname{number of parameters estimated})$

And in this example, we esimated the mean $\mu$ from the sample, so $(\operatorname{number of parameters estimated})$ would be 1. Thus, with $n=8$ categories, $df=8-1-1=6$.

The solution is to grab the $\chi^2$ test statistic from the results of the test and calculate the $P$-value using $df=6$ with the `pchisq()` function like this:


```r
chisq_results <-                                # save the results
  chisq.test(
    x = combined_freq_table$observed_freq,
    p = combined_freq_table$expected_freq/76
  )

test_statistic <- chisq_results$statistic       # get the test statistic

p_value <- 1 - pchisq(test_statistic, df = 6)   # get the real p-value
p_value
```

```
#>    X-squared 
#> 0.0005334917
```

Finally, interpret the results of the test:

> Because the $P$-value of 5.3\times 10^{-4} is less than the $\alpha$-level of 0.05, I reject the null hypothesis. Therefore, the number of extinctions do not occur randomly in time.

If you were writing a paper in APA format, you would write:

> The number of extinctions do not occur randomly in time, $\chi^2(6,N=76)=23.95$, $p= 0.00053$.

## Assignment

Claim your repository for Lab 6 on GitHub Classroom using the link on D2L.

### Question 1 - Cats

> Answer question 19 in the assignment questions section of chapter 8 in Whitlock and Schluter (2020).
>
> In an article published in the Journal of the American Veterinary Medical Association, Whitney and Mehlhaff (1987) presented results on the injury rates of cats that had plummeted from buildings in New York City, according to the number of floors they had fallen. The damage caused by such falls was dubbed feline high‑rise syndrome (FHRS).
>
> A more recent study of FHRS included data on the month in which each of 119 cats fell (Vnuk et al. 2004). The data are in the accompanying table.
>
> **Can you infer that the rate of cat falling varies between months of the year?**

Carry out the goodness‑of‑fit test using the significance level $\alpha=0.05$. Use the methods shown in this lab (show your code). In your R script, add code comments with text stating the null and alternative hypotheses and reporting your results in APA format.

The data are stored at:


```r
"https://whitlockschluter3e.zoology.ubc.ca/Data/chapter08/chap08q19FallingCatsByMonth.csv"
```

### Question 2 - Truffles

Answer question 19 in the assignment questions section of chapter 8 in Whitlock and Schluter (2020).

> Truffles are a great delicacy, sending thousands of mushroom hunters into the forest each fall to find them. A set of plots of equal size in an old‑growth forest in Northern California was surveyed to count the number of truffles (Waters et al. 1997).
>
> **Are truffles randomly located around the forest?**

Carry out the goodness‑of‑fit test using the significance level $\alpha=0.05$. Use the methods shown in this lab (show your code). In your R script, add code comments with text stating the null and alternative hypotheses and reporting your results in APA format.

The data are stored at:


```r
"https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter08/chap08q16Truffles.csv"
```

### Submission

When you have completed the questions listed above, save your files, commit your changes, and push them to GitHub.

Then copy the URL to your GitHub repository and submit that to the Assignment on D2L.
