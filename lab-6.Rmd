# Lab 6: Data transformation 2

## Learning Outcomes

By the end of this lab, students will be able to:

1.  Pick columns in a dataset
2.  Rename variables
3.  Create new variables

## Introduction

The following assignment implements a just-in-time learning approach where you will acquire knowledge and skills exactly when you need them, rather than in advance.

The goal for todays lab is to work with columns in a dataset.

## Prerequisites

Complete the following instructions to prepare for the lab:

1.  Set the following global options in RStudio
    a.  Go to the Tools menu \> Global Options
    b.  Under **General \> Basic**, uncheck the boxes under Workspace and History
    c.  Under **Code \> Editing**, check the box for "Use native pipe operator"
    d.  Under **Code \> Completion**, check the box for "Use tab for multiline autocompletions"
2.  Claim your repository on GitHub by following the link on D2L in the corresponding Content module.
3.  Clone your repository to your computer using the **New Project \> Version Control \> Git** method
4.  Make your first commit by adding the R project file and gitignore file to Git.

## Assignment

### Instructions

1.  Create a new `questions.R` script. This is where you will write the code to answer the questions below.
2.  If it is not already installed, then install the **tidyverse** package. Do not add code to the script to do this.
3.  Write the code to load your packeges.
4.  Put placeholder comments for the questions below.
5.  Answer the questions in the `questions ----` section of the script by writing code
    -   Below each question, write code to perform the requested action
    -   Do not assign the results a name (i.e. do not create an object) using the assignment operator. For example, if the question asked you to glimpse the penguins data:
        -   Correct: `penguins |> glimpse()`
        -   Incorrect: `new_df <- penguins |> glimpse()`
    -   Include only one command per question.
        -   Do not include every version of code you tried.

        -   Only include a single command that performs the required action.

        -   The command may extend over multiple lines, for example:

            ``` r
            penguins |>
              glimpse()
            ```

### Questions

1.  Use the `names()` function to see the names of the variables in the penguins dataset.
2.  Select only the columns species, sex, and flipper length.
    1.  Use the `select()` function as described in [R4DS 3.3.2](https://r4ds.hadley.nz/data-transform.html#columns)
3.  Select the column species and all columns that begin with "bill\_"
    1.  Use the `starts_with()` helper function, which goes inside the `select()` function.
4.  Select all columns except those ending with "\_mm"
    1.  Use the `ends_with()` helper function
5.  Rename the `island` variable to `location`
    1.  Use the `rename()` function as described in [R4DS 3.3.3](https://r4ds.hadley.nz/data-transform.html#rename)
6.  Select the variables flipper length and flipper width, then create a new variable named `aspect_ratio` by that is the ratio of flipper length to flipper width.
    1.  Use the `mutate()` function as described in [R4DS 3.3.1](https://r4ds.hadley.nz/data-transform.html#sec-mutate)
7.  Extra credit: Use pipes to select female Adelie penguins with a bill depth of at least 18 mm, arrange the results by decreasing bill depth, and select only the columns year and flipper_length_mm, in that order.

### Grading

-   Your grade will be based on the completeness and accuracy of the code in your script.

-   Commands will be run starting at the top of the script.

-   Questions will be marked correct only if the code runs without error and produces the requested output in the console.

-   Before submitting, you are strongly advised to run your entire script from top to bottom, one line at a time, to ensure it does not produce errors and it prints the requested output in the console.

## Submission

1.  Save changes in your R script
2.  Stage your changes by checking the boxes next to files in the git tab
3.  Commit the changes
4.  Push the changes
5.  Go to Github and copy the URL to your lab repository online
    -   The easiest way to copy the URL is to click the green **Code** button, then the copy button
6.  Submit the URL to your assignment on D2L
