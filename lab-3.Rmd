# Lab 3: Data visualization

## Learning Outcomes

Students will be able to:

1.  Create graphs using the ggplot2 package
2.  Understand what aesthetic mappings are and define them when graphing
3.  Visualize categorical and numerical distributions using bar charts and histograms
4.  Visualize the relationship between two variables using boxplots, density plots, stacked bar charts, relative frequency plots, scatterplots,
5.  Identify the parts of a boxplot and define them
6.  Visualize the relationships between three variables by mapping additional aesthetics like color and shape and using facets

## Introduction

In this lab, you will work in pairs as you read the instructions below and follow them. Your instructor will help as needed. You may begin as soon as you arrive in lab.

The lab manual for this course is [R for Data Science (2e)](https://r4ds.hadley.nz/) by Hadley Wickham, Mine Çetinkaya-Rundel, and Garrett Grolemund. You can skim the Introduction, which covers much of what you learned in your previous labs.

## Prerequisites

This lab assumes you know how to:

1.  Create a new project in RStudio
2.  Create a new R script
3.  Write code in your R script, run it, and interpret output in the Console
4.  Save a plot as a PNG file using the Export function in the Plots pane

This lab assumes you have already:

1.  Set the global options in RStudio
2.  Installed the tidyverse package

## Tutorial Walkthrough

1.  Create a new RStudio project for this lab. Call it **Lab 3 Data Visualization**.
2.  In the new project, create a new R script and save it as **data-vis-practice.R**. This is where you will write code as you follow along in the book tutorial as described below.
3.  Navigate to R4DS [Chapter 1 Data Visualization](https://r4ds.hadley.nz/data-visualize) and begin reading.
    -   As you read, copy code from the book and paste it into your R script. Run the code to see the various outputs in the Console and Plots tabs.
    -   This script will not be graded, it is just for you to practice running code and to make sure code works before pasting it into your report.
    -   Skip the exercises.

## Your Assignment

### Instructions

1.  Create a new Microsoft Word document and put your name at the top.
2.  Number questions 1-5 on the document. You do not need to copy and paste the questions below, just have the numbers.
3.  As you complete the questions below, write your answer or paste your plot into the document under the corresponding number.
4.  Save your word document as a PDF file and submit it to D2L.

### Questions

1.  Inspecting a dataset
    -   How many rows and columns are there in the penguins dataset?
    -   List two ways you can determine this in RStudio.
2.  Using help
    -   Use the ?help command to look up a function.
    -   Which function did you look up?
3.  Create a barchart with the following characteristics.
    -   **Data:** Use the penguins dataset
    -   **Aesthetics:**
        -   Map island to the x-axis
        -   Arrange islands by decreasing frequency from left to right
        -   Map island to color
    -   **Geom:** Use `geom_barchart()`
    -   **Labels:** Include the following labels
        -   **Title:** appropriate text
        -   **Caption:** `"Created by YOUR NAME"`
4.  Create a histogram with the following characteristics.
    -   **Data:** Use the penguins dataset
    -   **Aesthetics:**
        -   Map a continuous variable of your choice to the x-axis
        -   Map a categorical variable of your choice to color
    -   **Geom:** Use `geom_histogram()`
    -   **Labels:** Include the following labels
        -   **Title:** appropriate text
        -   **Caption:** "Created by YOUR NAME"
5.  Create a scatterplot with the following characteristics.
    -   **Data:** Use the penguins dataset
    -   **Aesthetics:**
        -   Map a continuous variable to the x-axis
        -   Map a continuous variable to the y-axis
        -   Map a continuous variable to size
        -   Map a categorical variable to color
    -   **Geom:** Use `geom_point()`
    -   **Scales:**
        -   Use the `scale_color_colorblind()` or `scale_color_brewer()` function to set the colors to a colorblind-safe palette
    -   **Labels:** Include the following labels
        -   **Title:** appropriate text
        -   **Caption:** `"Created by YOUR NAME"`
        -   **X-axis:** appropriate text and measurement units, nicely formatted
        -   **Y-axis:** appropriate text and measurement units, nicely formatted
        -   **Size:** appropriate text and measurement units, nicely formatted
        -   **Color:** appropriate text, nicely formatted

## References

Wickham, H., M. Çetinkaya-Rundel, and G. Grolemund. 2023. R for data science: import, tidy, transform, visualize, and model data. Second edition. O’Reilly Media, Inc., Sabastopol, California, USA. <https://r4ds.hadley.nz/>
