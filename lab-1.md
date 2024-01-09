# (PART) Lab Assignments {.unnumbered}

# Lab 1: Introduction to R and RStudio

The course tools for the lab include the software programs R and RStudio.

## Objectives

Learn how to:

1.  Open R and RStudio
2.  Create a Project in RStudio
3.  Adjust Project settings
4.  See what version of R and RStudio you are using
5.  Create an R script
6.  Install and load packages
7.  Create a graph using ggplot
8.  Customize labels
9.  Export a graph as an image file

## Assignment

1.  Follow along as your instructor introduces you to R and RStudio; Keep written notes of how to complete each step
2.  Create a Project in RStudio; it doesn’t matter where you save it or what you name it
3.  Install the following packages:
    -   tidyverse
    -   palmerpenguins
4.  Create an R script and add the code to load the following packages:
    -   palmerpenguins
    -   ggplot2
5.  While the instructor helps everyone get caught up, familiarize yourself with the palmerpenguins package by reading the article [Introduction to palmerpenguins](https://allisonhorst.github.io/palmerpenguins/articles/intro.html)
6.  In that article, find the code for “Scatterplot example 1”, copy it, and paste it into your R script
7.  Add code to add the following labels to the plot:
    -   title: `“Penguin flipper length versus body mass”`
    -   x-axis: `“Body mass (g)”`
    -   y-axis: `“Flipper length (mm)”`
    -   caption: `“Created by YOUR NAME”`\
        (replace YOUR NAME with *your* name)
8.  Export the figure (save it on your computer somewhere)
    1.  Play around with different ways to export, like using the Export button in the Plots tab in RStudio, or just copying the image in that tab
    2.  Then follow along as the instructor shows you a code based way of doing it.
9.  Create a new Microsoft Word document.
    1.  Sign in to Microsoft 365 so you can save your document for later.
10. Find the file on your computer, copy it, and paste it into the Word document. Alternatively, you could use the insert image button and dialog within Word to do the same thing.
11. Save the document as a PDF
12. Upload the document to the Lab 1 assignment on D2L.

## Checklist

Check your skills and comprehension; you should be able to do the following:

-   Use the Windows operating system
    -   Run programs
        - [ ] Use Windows Start Menu
        - [ ] Run a given version of R using 32-bit or 64-bit
        - [ ] Run RStudio
    -   Work with folders and files
        - [ ] Run File Explorer on Windows
        - [ ] Open Documents folder through Quick Access
        - [ ] Open Documents folder through the C drive
        - [ ] Move and rename files and folders
-   Use R
    -   Work in the R Console
        - [ ] Find the command prompt (\>)
        - [ ] Discern the status of the command prompt (ready \>, waiting +, unrun code)
        - [ ] Escape a waiting command prompt (Esc)
        - [ ] Clear unrun code on a command prompt (Esc/Backspace)
        - [ ] Run a command (line of code)
        - [ ] Scroll through previous commands (up arrow)
    -   Do math
        - [ ] Use numbers and operators + - \* / \^ to do math
        - [ ] Control order of operators using parentheses ( )
        - [ ] Use math functions sqrt() and abs()
    -   Work with objects in the global environment
        - [ ] Use assignment operator \<- to create an object
        - [ ] Identify valid and invalid object names:doesn’t start with a number, contains only letters, numbers, . and \_
        - [ ] Print an object in the console by running its name
        - [ ] Print an object in the console using print()
        - [ ] List the objects in the global environment using ls()
        - [ ] Remove an object from the global environment using rm()
        - [ ] Remove all objects from the environment using rm(list = ls())
