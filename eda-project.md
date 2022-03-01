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

## Timeline

You will receive several weeks of in-class time during lab to work on your EDA Project.

-   During week 6, you will choose your project. There are at least three approaches to this:

    1.  You select a data set and proposing some questions to explore within it,
    2.  You select an interesting topic and look for relevant data sets you can bring to bear on the subject
    3.  You provide your own question and data set, for example from a research project you are working on, or
    4.  Some combination of these.

-   During week 7 you will create a GitHub repository for your project. Your first addition will be a README file containing your project title and abstract.

-   During week 8 your instructor will provide feedback on the abstract, which you will incorporate into a revised abstract and then [submit an application to the Student Academic Conference](sac-application.html).

-   In subsequent weeks, we will take *some* time to work on the project, but you are also expected to work on it outside of class.

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

## Create a repository for your project

One member of your group should [create a new repository](https://docs.github.com/en/get-started/quickstart/create-a-repo) on GitHub. Name the repository using your last names, the year, and "EDA Project", for example: "MacArthur and Wilson 2022 EDA Project". While creating the project, choose to make it public and initialize it with a README file.

Edit the README file (either right there on GitHub or RStudio after cloning the repository) to include your names, the project title, and the abstract. The names and title should be formatted as second-level headings. The entire readme should look something like this\*.


```md
# MacArthur and Wilson 2022 EDA Project

## An equilibrium theory of insular zoogeography*

by Robert MacArthur and E. O. Wilson

An exploratory data analysis for BIOL 275 Quantitative Biology at Minnesota State University Moorhead. Instructor: Chris Merkord

### Abstract

A graphical equilibrium model, balancing immigration and extinction rates of species, has been developed which appears fully consistent with the fauna-area curves and the distance effect seen in land and freshwater bird faunas of the Indo-Australian islands. The establishment of the equilibrium condition allows the development of a more precise zoogeographic theory than hitherto possible. 

One new and non-obvious prediction can be made from the model which is immediately verifiable from existing data, that the number of species increases with area more rapidly on far islands than on near ones. Similarly, the number of species on large islands decreases with distance faster than does the number of species on small islands.

As groups of islands pass from the unsaturated to saturated conditions, the variance-to-mean ratio should change from unity to about one-half. When the faunal buildup reaches 90% of the equilibrium number, the extinction rate in species/year should equal 2.303 times the variance divided by the time (in years) required to reach the 90% level. The implications of this relation are discussed with reference to the Krakatau faunas, where the buildup rate is known.

A "radiation zone," in which the rate of intra-archipelagic exchange of autochthonous species approaches or exceeds extraarchipelagic immigration toward the outer limits of the taxon's range, is predicted as still another consequence of the equilibrium condition. This condition seems to be fulfilled by conventional information but cannot be rigorously tested with the existing data.

Where faunas are at or near equilibrium, it should be possible to devise indirect estimates of the actual immigration and extinction rates, as well as of the times required to reach equilibrium. It should also be possible to estimate the mean dispersal distance of propagules overseas from the zoogeographic data. Mathematical models have been constructed to these ends and certain applications suggested.

The main purpose of the paper is to express the criteria and implications of the equilibrium condition, without extending them for the present beyond the Indo-Australian bird faunas.
```

\*Note: this is not a real abstract, it is meant only as an example for how to format your abstract.

Your EDA project will have its own GitHub repository which will eventually include:

1.  An R project file (.Rproj) and .gitignore file
2.  Your data analysis R scripts
3.  README.Rmd containing the text and code to create your final poster
4.  README.md containing your final "poster". This document will contain the same text, tables, graphs, and other figures as the poster you present at the Student Academic Conference.

## Data Import Tips

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

-   use `read_csv()` or `readxl::read_excel()`

    -   do NOT use `read.csv()`
    -   readxl package is installed with tidyverse, but not loaded
    -   you have to load it yourself: `library(readxl)`
    -   path argument: type "" put cursor in between and hit tab to autocomplete

-   read_excel() has a `sheet` argument to choose which sheet

-   R puts back ticks around non-standard column names eg `` ` `` is a backtick, its on the upper left of the keyboard

    -   standard names have only letters, numbers, `_` and `.`
    -   any name with special characters or starts with a number is considered non-standard.
    -   its a good idea to rename these columns

-   You can rename columns during import with the col_names argument to `read_*()` or using `dplyr::rename()`

-   You can skip rows using the skip argument to `read_*()`

-   When you play with `skip` argument, sometimes you need to change the `col_names` argument too

-   You can read only a set number of rows using the `n_max` argument

## Assignments

1.  [SAC Application](sac-application.html) - Submit your application to the SAC website by the assignment deadline posted on D2L. The hard deadline for submission to the SAC is listed on the SAC website.

Other assignments will be added here and on D2L throughout the semester. Your two main deliverables will be a GitHub repository containing a version of your project poster in markdown format, and a physical poster you will present at the Student Academic Conference in April.
