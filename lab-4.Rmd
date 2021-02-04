# Subsetting tables

## Objectives

In this lab, you will learn to:

-   Remove rows based on their values
-   Reorder rows based on their values
-   Remove columns based on their names

## Introduction

Working with tabular data often requires manipulating the contents of the table. For example, you may want remove certain columns to make the table easier to read, or remove rows that do not match certain criteria before graphing.

You can manipulate tables easily with functions from the `dplyr` package, one of the core members of the `tidyverse`.

-   Pick rows by their values using `filter()`
-   Reorder rows using `arrange()`
-   Pick columns by name using `select()`

## Background reading

Your lab manual, *R for Data Science*, contains detailed instructions on filtering, arranging, and selecting in

Eventually you will read most of [Chapter 5: Data transformation](https://r4ds.had.co.nz/transform.html).

For today's assignment, you can start by reading Sections 5.1 and 5.2

If you wish, you may try their examples in your own R Script. In that case, don't forget to load the packages as described in [Section 5.1.1 Prerequisites](Chapter 5: Data transformation.).

## Assignment

For your assignment, you will work with the ebird taxonomy table you used in the previous lab.

1.  Create a new R script named \`assignment.R\` to house your code.
2.  Load the tidyverse and auk packages
3.  Read in the ebird taxonomy table

Now use what you know from previous labs, and what you have learned from today's lab, to perform the following data manipulation tasks:

1.  Print a table containing only species NOT in the Order Passeriformes

2.  Using this data, show how many species are in each taxonomic order, like you did in Lab 3. Create a bar chart showing the distribution of species by taxonomic order.

3.  Print a table containing only species in the Order Passeriformes

4.  Using this data, show how many species are in each taxonomic family. Create a bar chart showing the distribution of species by taxonomic family.

### 
