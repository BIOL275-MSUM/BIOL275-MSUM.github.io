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
    -   Answer the following question in your word document:
        -   How many rows and columns are there in the penguins dataset?
        -   List two ways you can determine this in RStudio
2.  Using help
    -   Use the `?` operator or `help()` function to look up a function. For example: `?ggplot` or `help(ggplot)`.
    -   Answer the following question in your word document:
        -   Which function did you look up?
3.  Create a barchart with the following characteristics and insert it into your Word document.
    -   Graph characteristics:
        -   **Data:** Use the penguins dataset
        -   **Aesthetics:**
            -   Map island to the x-axis, i.e. `x`
            -   Arrange islands by decreasing frequency from left to right
            -   Map island to the fill aesthetic, i.e. `fill`
        -   **Geom:** Use `geom_bar()`
        -   **Labels:** Include the following labels
            -   **Title:** appropriate text
            -   **Caption:** `"Created by YOUR NAME"`
    -   Hints:
        -   See [R4DS Section 1.4.1 A categorical variable](https://r4ds.hadley.nz/data-visualize#a-categorical-variable) for a reminder of how do to make a barchart.
        -   See [R4DS Section 1.2.4 Adding aesthetics and layers](https://r4ds.hadley.nz/data-visualize#creating-a-ggplot) for a reminder of how to map variables in the data to aesthetic features of the graph (like the x-axis and color), and how to add labels to a graph using the `labs()` function.
        -   The x-axis aesthetic is `x` and the fill color aesthetic is `fill` . You can see a list of possible aesthetics for a given geom function by looking at the help page of the geom function, e.g. `?geom_bar`
        -   When adding layers to a ggpot, don't forget to put a `+` at the end of the previous line
4.  Create a histogram with the following characteristics and insert it into your Word document.
    -   **Data:** Use the penguins dataset
    -   **Aesthetics:**
        -   Map a continuous variable of your choice to the x-axis aesthetic
        -   Map a categorical variable of your choice to the fill aesthetic
    -   **Geom:** Use `geom_histogram()`
    -   **Labels:** Include the following labels
        -   **Title:** appropriate text
        -   **Caption:** "Created by YOUR NAME"
5.  Create a scatterplot with the following characteristics and insert it into your Word document.
    -   Graph characteristics:
        -   **Data:** Use the penguins dataset
        -   **Aesthetics:**
            -   Map a continuous variable to the x-axis aesthetic
            -   Map a continuous variable to the y-axis aesthetic
            -   Map a continuous variable to size aesthetic
            -   Map a categorical variable to color aesthetic
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
    -   Hints:
        -   See [R4DS Section 1.5.3 Two numerical variables](Hints:  See R4DS Section 1.4.1 A categorical variable for a reminder of how do to make a barchart.) for a reminder of how do to make a scatterplot.
        -   See [R4DS Section 1.2.4 Adding aesthetics and layers](https://r4ds.hadley.nz/data-visualize#creating-a-ggplot) for an example of using `scale_color_colorblind()`
        -   When adding lots of labels in the `labs()` function, put each one on a separate line for clarity. Don't forget the comma on the preceding line.

## References

Wickham, H., M. Çetinkaya-Rundel, and G. Grolemund. 2023. R for data science: import, tidy, transform, visualize, and model data. Second edition. O’Reilly Media, Inc., Sabastopol, California, USA. <https://r4ds.hadley.nz/>
