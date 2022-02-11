---
bibliography: references.bib
---

# (PART) EDA Project {.unnumbered}

# EDA Project

## Overview

A major part of the lab will be to perform your own exploratory data analysis (EDA) in R.

You will work in groups of two or three.

Your group will choose a general topic to explore, find one or more datasets to use, and conduct an exploratory analysis of that data. You will present your results to the class and at the [MSUM's Andrew B. Conteh Student Academic Conference (SAC)](https://www.mnstate.edu/sac/) in April (application deadline is Feb. 25, 2022).

## Purpose

The purpose of the EDA project is for you to practice working with real data to answer a **question** that interests *you* and communicate the results to a wide audience.

The goal of the EDA is to generate hypotheses that could be explored in future projects, not to test hypotheses. EDA is a valuable tool for hypothesis generation: you visualize the data and look for patters, generate hypotheses about the processes that led to those patterns, further explore the data to look for deeper patterns, and finally end up with a list of testable hypotheses one could pursue to answer your question.

## Examples

There are many examples of exploratory data analyses available online. If you want to see an exploratory analysis in R from start to finish, see the following examples:

-   Wickham and Grolemund [-@wickham2022] explain what an exploratory data analysis is and explore the diamonds data set in the ggplot2 package.

-   De Gouveia [-@degouveia2020] explores the Behavioral Risk Factor Surveillance System dataset to answer several research questions:

    -   Does the access of health care influence the 'general health' of the population and can we infer a relation (association) between 'general health' the physical exercise a person performs?

    -   which state has the highest obesity rate in the US and what is the distribution troughout the United states in 2013?

    -   Is there a relation between BMI and an 'age group' and can we infere a relation (association) between the BMI of age groups and their nutrition behavior as well as pysical activity pattern?

## Choose a project

### Data sets

The first step in your EDA project is to choose one or more data sets you will explore.

For help in finding, learning about, and accessing data sets, see [Data Sets](data-sets.html).

For many questions, you may need to use multiple data sets. For example you may combine county level health data with county level environmental data from different data sets.

### Question

The second step in your EDA project is to develop a broad question or concept that can be answered or explored with your data sets.

For example, if you are interested in the field of public health, your over-arching question might be something like "How do environmental risk factors affect cardiovascular diseases?"

During the course of your exploratory data analysis you will gradually form more specific questions. These questions are will be phrased in terms of the variables and observations that comprise your data sets, and each will have a definite answer in the form of a visualization or statistical analysis. Following the diabetes example, your more specific questions might include the following:

-   How did diabetes prevalence vary among states in 2019?
-   How did diabetes prevalence vary among racial or ethnic groups in Minnesota in 2019?
-   What is the correlation between annual diabetes prevalence and the proportion of the population covered by medical insurance in Clay County, Minnesota from 2010-2019?

Your general question will provide the overall direction of your project, while new specific questions will arise through the course of the exploratory analysis.

You may not end up including all specific questions in your final EDA Project Poster, depending on how interesting or applicable the results were for each one.

## Assignments

1.  [SAC Application](sac-application.html) - Submit your application to the SAC website by the assignment deadline posted on D2L. The hard deadline for submission to the SAC is listed on the SAC website.

Other assignments will be added here and on D2L throughout the semester. Your two main deliverables will be a GitHub repository containing a version of your project poster in markdown format, and a physical poster you will present at the Student Academic Conference in April.

## Project Management

### GitHub repository

Your EDA project will have its own GitHub repository which will include:

1.  Your data analysis R scripts

2.  README.Rmd containing the text and code to create your final poster

3.  README.md containing your final "poster". This document is what you will present at the SAC

### Data Import Tips

This info will be useful when you get to the stage of importing data (after your SAC abstract has been submitted).

Where to store your data?

-   ALWAYS in your project folder, never elsewhere on your computer

-   Create a folder named `data`

-   Add `data/` to your gitignore file

-   download data files and save them into your `data/` folder

    -   you can download manually (point and click in browser). if so, write the link to the data source in your README so its easy to find
    -   you can download programatically with `download.file()` function

Importing your data

-   never edit your raw data file. instead, read it as is and clean it up in R

-   use read_csv() or readxl::read_excel()

    -   do NOT use read.csv()
    -   readxl package is installed with tidyverse, but not loaded
    -   you have to load it yourself: library(readxl)
    -   path argument: type "" put cursor in between and hit tab to autocomplete

-   read_excel() has a `sheet` argument to choose which sheet

-   R puts back ticks around non-standard column names eg `-` is a backtick, its on the upper left of the keyboard

    -   standard names have only letters, numbers, `_` and `.`
    -   any name with special characters or starts with a number is considered non-standard.
    -   its a good idea to rename these columns

-   You can rename columns during import with the col_names argument to `read_*()` or using `dplyr::rename()`

-   You can skip rows using the skip argument to `read_*()`

-   When you play with `skip` argument, sometimes you need to change the `col_names` argument too

-   You can read only a set number of rows using the `n_max` argument

## References
