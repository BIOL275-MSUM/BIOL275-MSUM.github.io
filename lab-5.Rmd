# Lab 5: Data transformation 1

## Learning Outcomes

By the end of this lab, students will be able to:

1.  Pick rows based on their values
2.  Reorder rows based on their values
3.  Use the pipe operator

## Introduction

The following assignment implements a just-in-time learning approach where you will acquire knowledge and skills exactly when you need them, rather than in advance.

## Prerequisites

Complete the following instructions to prepare for the lab:

1.  Set the following global options in RStudio
    a.  Go to the Tools menu \> Global Options
    b.  Under **General \> Basic**, uncheck the boxes under Workspace and History
    c.  Under **Code \> Editing**, check the box for "Use native pipe operator"
    d.  Under **Code \> Completion**, check the box for "Use tab for multiline autocompletions"
2.  Claim your repository on GitHub by following the link on D2L in the Lab 5 Content module.
3.  Clone your repository to your computer using the **New Project \> Version Control \> Git** method
4.  Make your first commit by adding the R project file and gitignore file to Git.

## Assignment

### Instructions

1.  Open the `questions.R` script. This is where you will write the code to answer the questions below.
2.  If it is not already installed, then install the **tidyverse** package. Do not add code to the script to do this.
3.  Run the code under the sections:
    a.  `load packages ----`
        -   Loads the required packages
    b.  `look at penguin data ----`
        -   A variety of commands to remind you how to look at a dataset by printing various things in the console
    c.  `example of pipe usage ----`
        -   Commands that illustrate how to use the pipe operator `|>` .
        -   Read section [R4DS 3.1.3 dplyr basics](https://r4ds.hadley.nz/data-transform.html#dplyr-basics) so you have a general idea of how the pipe is used.
4.  Answer the questions in the `Questions ----` section of the script by writing code
    -   Below each question, write code to perform the requested action
    -   Do not assign the results a name (i.e. do not create an object) using the assignment operator. For example, if the question asked you to glimpse the penguins data:
        -   Correct: `penguins |> glimpse()`
        -   Incorrect: `new_df <- penguins |> glimpse()`
    -   Include only one command per question.
        -   Do not include every version of code you tried.

        -   Only include a single command that performs the required action.

        -   The command may extend over multiple lines, for example:

            ``` R
            penguins |>
              glimpse()
            ```

### Questions

1.  Filter the penguins data to include only birds with bill lengths greater than 55 mm.
    -   Familiarize yourself with the filter function: [R4DS 3.2.1 `filter()`](https://r4ds.hadley.nz/data-transform.html#filter)
    -   Know how to use the logical operators
2.  Filter the penguins data to include only birds with flipper lengths less than or equal to 180 mm.
3.  Filter the penguins data to include only Chinstrap Penguins.
    -   Avoid the `=` mistake described in [R4DS 3.2.2 Common mistakes](https://r4ds.hadley.nz/data-transform.html#filter)
4.  Filter the penguins data to exclude penguins on Biscoe Island.
    -   Use the "not equal to" operator described in R4DS 3.2.1
5.  Filter the penguins data to include penguins captured in 2007 and 2009.
    -   Use the "in" operator `%in%` described in R4DS 3.2.1
6.  Filter the data to include only penguins with a missing value for bill length.
    1.  Use the `is.na()` function
    2.  See examples of this in [R4DS 4.3 Pipes](https://r4ds.hadley.nz/workflow-style.html#sec-pipes)
7.  Filter the penguins data to exclude penguins with a missing value for sex.
8.  Filter the penguins data to include only Chinstrap Penguins with flipper lengths less than or equal to 180 mm.
    -   Master the "or" operator `|` or the comma `,` as described in R4DS 3.2.1
9.  Arrange the penguins dataset in increasing order by flipper length.
    -   See [R4DS 3.2.3 `arrange()`](https://r4ds.hadley.nz/data-transform.html#arrange)
10. Arrange the penguins dataset in decreasing order by body mass.
11. Filter the penguins data to include only Chinstrap Penguins with flipper lengths less than or equal to 180 mm and arrange penguins in arrange them in decreasing order by body mass.
    -   This requires using the pipe operator: [R4DS 3.4 The pipe](https://r4ds.hadley.nz/data-transform.html#sec-the-pipe)

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
