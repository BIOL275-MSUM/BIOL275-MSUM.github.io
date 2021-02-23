# (PART) EDA Project {.unnumbered}

# EDA Project Instructions

## Overview

A major part of the lab will be to perform your own exploratory data analysis in R.

You will choose a dataset to use and a question to answer. You will present your results to the class and at the [MSUM's Andrew B. Conteh Student Academic Conference (SAC)](https://www.mnstate.edu/sac/) in April (application deadline is Feb. 25).

## Purpose

The purpose of the lab project is for you to practice working with real data, exploring data sets to answer a question that interests *you*, and communicating the results.

## Assignment \#1 - Question

This assignment is due Thursday February 25.

1.  Find a partner with similar interests

2.  Choose a [data set](data-sets.html)

    1.  For some questions, you may need to use multiple datasets. For example you may combine county level health data with county level environmental data from different datasets.

3.  Develop a question

## Assignment \#2 - Abstract

This assignment is due by Thursday, February 25.

Your abstract must be submitted to the SAC website by Sunday, February 28.

### How to write an abstract

Your abstract should be one paragraph with 100-250 words. Below, I suggest 6-7 specific sentences to include, although your abstract can vary from this pattern depending on the nature of your question.

-   Two sentences of background explaining the "system". For example, if you are exploring the risk factors associated with diabetes, you might start by explaining what diabetes is, how you get it, and what other studies have found regarding risk factors.

-   One sentence laying out your question.

-   One sentence saying which data set you will use, and where it came from.

-   One or two sentence describing what you plan to do (i.e. which variables will you compare) to answer your question. Unless you have a good reason not to, you should probably use the phrase "exploratory data analysis" somewhere in here.

-   One sentence about the conclusions you might draw based on your results, the contribution this might make towards science, how a decision-maker might use this information, or some other way of explaining how your expected results might be used.

Write the abstract in first person future tense, for example "I will..."

For more information about how to write an abstract, see <https://www.mnstate.edu/sac/preparing-presentation.aspx>

### How to write a title

Now that you have an abstract, it needs a title.

The title should be a single phrase or sentence, between 6 and 12 words long (this is flexible).

It should include important keywords related to your question, so that someone reading the title would have a good idea what the poster is about.

The title could be generic such as "the relationship between X and Y", or a declarative statement like in the example below. The title can omit some of the details included in the Question.

## Data Import Tips

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
