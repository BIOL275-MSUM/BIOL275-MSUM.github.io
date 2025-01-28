# Lab 4: Data import

## Learning Outcomes

Students will be able to:

1.  Use Git and GitHub to manage a project
2.  Use Quarto to author an HTML document
3.  Import datasets in various formats into R
4.  Deal with common data import issues
5.  Enter small datasets directly into R

## Overview

A brief overview of the steps for this lab:

1.  Complete the steps in [Getting Started] below
2.  Read chapters from R for Data Science (2e)
    -   [Chapters 7 Data Import](https://r4ds.hadley.nz/data-import)
    -   [Chapter 20 Spreadsheets](https://r4ds.hadley.nz/spreadsheets)
3.  Read the *entire* [Assignment] section before beginning, then complete the requested assignment
4.  [Submit](#submission) your assignment

## Get started with Git

1.  Familiarize yourself with version control by reading [About Git and GitHub].

2.  [Introduce yourself to Git] on your computer. Campus computers should have Git already installed on them. If you are using your own computer, you must first [Install Git] on it. If you are using Posit Cloud, git should already be installed.

3.  Go to GitHub <https://github.com/> and Sign Up for an account. Confirm your email address before continuing to the next step.

4.  Claim your GitHub repository for this lab by following the GitHub Classroom link posted on D2L in this lab's content module. Because this is your first time using GitHub Classroom, you will need to select your name from the list to link your GitHub account with your instructor's record for you.

    After claiming the repository, **copy the repository link** (or copy the URL in the browser window), which you will use in the next step.

5.  Create a new RStudio project, this time using the **Version Control** option instead of the New Project option. Select **Git**, then **paste the link to your repository** in the Repository URL field. Press the tab key to autofill the Project Directory Name field with the name of your GitHub repository.

6.  When complete, RStudio should have your project open and **the Git tab in the upper right should be present**. If not, ask for help.

    If a dialog window opens asking you to enter your GitHub username and password, do this:

    a.  If asked for your GitHub username and password, click "Cancel". If asked for just your username, enter it and press Enter.

    b.  Enter a personal access token (PAT) from GitHub. To generate that token:

    c.  This will cause another dialog window to appear asking for your GitHub password. Do not enter it. Instead, enter a Personal Access Token (PAT):

        i.  Go to the Personal Access Tokens page in your GitHub Settings: <https://github.com/settings/tokens>

        ii. Generate a new token by clicking the button "Generate new token", then click "Generate new token (classic)" and confirm access using two-factor authentication.

        iii. The PAT will only be good for the computer you use it on. If you move to another computer later you will have to repeat this process and generate a new token. If you are on a campus computer that gets wiped periodically, you may need to repeat this process. If you are on your own computer, or Posit Cloud, you should only need to do this once

        iv. For this token, enter a **Note** describing which computer and which type of access you are granting. For example: "CB 200 Computer 193827 repo access".

        v.  Set the expiration date. I recommend setting a custom date near the end of the semester.

        vi. Select the scope by checking the "**repo**" box. This means the PAT will grant full control of your repositories, which is what you want RStudio to have.

        vii. Scroll down and click the green **Generate token** button.

        viii. On the next screen, copy the token that is generated.

        ix. Go back to the RStudio dialog window asking you for your GitHub password. Paste the PAT you just copied into the password field and press Enter.

## Lab report in Quarto

In this course, you will learn to write your reports using [Quarto](https://quarto.org/), a system developed by Posit to allow you to weave narrative text and R code and output into elegant documents including HTML, PDF, Word, PowerPoint, and more. The process is code-based, so it is fully reproducible.

In your new RStudio project, inspect the list of files shown in the Files tab in the bottom right pane.

You will see one named `lab-report.qmd`. Click the file name to open it in a new source window.

Look through the document and you will notice the following elements:

-   **Metadata** at the top, beginning and ending with three dashes `---`. This is called the YAML header and contains information about how the document should be rendered when you make your lab report from it. Put your name in the author field, but otherwise leave it as is.

-   Some **narrative text** including headings, paragraphs, and numbered lists.

-   Some vertical lines with the word "answer" after them. These are where you will write your answers to the questions. The formatting used here is called a "blockquote". This will be handy to know when you need to add and format your own answers.

-   R code chunks. These look like colored boxes that begin with `{r}`. This is where you can put R code. Think of each box as its own little R script. Or more accurately, that all the chunks in a given Quarto document together form a script. For example, if you run the code `x <- 1` in one chunk and then run `print(x)` in the next code chunk, it will remember `x` and print it correctly in the second chunk. In other words, the environment is maintained from chunk to chunk.

Why include R code chunks in the document? There are two main reasons:

1.  To show the instructor you know what code to run to answer a question.
2.  To show the output of the code. This could be graphical output, like a bar chart or scatterplot, or text output like the results from a statistical hypothesis test.

In this way, you can weave together narrative text and the output of R code. No more copying images from R and pasting them into a Word document to create a report. In fact, you can actually [export your document as a Word document](https://quarto.org/docs/output-formats/ms-word.html) by changing one line of the YAML header. Other formats Quarto can create include PDF and PowerPoint.

## Render your report

Your `lab-report.qmd` document already contains some text to get you started.

One thing you will need to know is how to convert your Quarto file into your lab report, a process RStudio calls "rendering".

To render your lab report, click the "Render" button and wait while the process completes. A new tab should open in your web browser showing the rendered lab report.

Compare how the rendered lab report compares to the original Quarto document and you will see a few changes:

-   The title, subtitle, author, and date from the YAML header are now formatted nicely

-   There is a table of contents on the right side

-   The first R code chunk, which contains the `library()` commands, has been run. You can now see both the code you supplied in the R code chunk and the output of that code. In this case, the output is the message about which tidyverse packages were loaded and which function names have conflicts. Its the same output you would see in your console if you ran that code yourself in R.

-   The last code chunk has been rendered, showing your session info, which includes your operating system, version of R, and which packages were loaded when you created the lab report.

You will also notice that there is a new `lab-report.html` file in your project directory, as well as a folder named `lab-report_files`. The folder contains a variety of files needed to show the HTML file correctly. In the future, it will contain any images generated by R, for example plots created by ggplot.

## Make your first Git commit

Eventually you will want to save your HTML lab report and its associated files in a way that your instructor can access them. This is done by adding those files to your repository on GitHub.

How do you do that? That involves "committing" the changes on your computer first, then "pushing" those changes to GitHub.

In Git, a "commit" is a set of changes to source files that are saved together with a description of the changes. Commits are the basic unit of version control. You can look at a list of past commits and know exactly what each one changed. You can also revert files back to the way they were after a particular commit, allowing you to see various versions of your documents or even permanently undo changes you have committed.

Now its time to make your first commit.

1.  **Stage the change.** In the Git tab, you will now see `lab-report.qmd` and `lab-report_files`, each with two yellow quesion marks next to it. This signifies that git sees new files or folders that you have not told it what to do with.

    Check the box next to each one. The yellow question marks will change to a green letter "A". The name of the folder will actually be replaced by the list of all files within that folder. The letter "A" signifies that you are adding new files for git to keep track of. The check box signifies that you have "staged" the changes to those particular files, which means they will be included in the next commit.

2.  **Commit the staged changes.**

    a.  Open the Commit window using one of these methods:

        -   Click the Commit button in the Git tab
        -   Go to the Tools menu \> Version Control \> Commit...
        -   Use the keyboard shortcut Alt+Ctrl+M

    b.  Double check that the changes you want to save are staged, i.e. the box next to the file is checked.

    c.  Put your cursor in the Commit message text box and type a commit message:

        ```         
        Render for the first time
        ```

        A good commit describe what changes are being made in the files you are committing and is usually written in present tense.

    d.  Click "Commit" to make it official.

3.  **Push the commit to GitHub.**

    The changes have now been committed on your computer (or Posit Cloud), but have not yet been synced back to your repository in the cloud, GitHub.

    Push the commit to GitHub using one of these methods:

    -   Click the Push button on the Git tab
    -   Go to the Tools menu \> Version Control \> Push Branch

4.  Go to your repository in GitHub and refresh the browser window. You should see your new file in the file list.

Congratulations on your first time using GitHub in the class, and for most of you the first time using version control ever.

In the future, you will always use the same steps to make changes to your projects:

1.  Edit your files. Save the edits.
2.  Stage the changes (you can select multiple files at this step).
3.  Commit the changes
4.  Push the commit (you can save up several commits in a row before you Push).

You should always follow these steps at the end of each class (if not more often) to save your work. The next time you work on a different computer, you can create your project using Version Control \> Git and your code will be automatically downloaded from GitHub.

## Getting Started {data-link="Getting Started"}

### Claim your repository from GitHub Classroom

Your instructor has created a blank repository for you using GitHub Classroom.

1.  Go to the course D2L page

2.  Navigate to the module for this lab

3.  Follow the link to claim your GitHub Classroom repository. After claiming your repository, copy its URL

### Clone the repository to your machine

1.  In RStudio, create a New Project

2.  Select the Version Control option, then GitHub

3.  Paste the URL you copied, and press tab to auto-complete the directory name

4.  Select a parent directory in which to place your new project folder, probably either `~` or `~/R`.

5.  Click OK.

### Prepare your working environment

1.  Once RStudio has started, double-check your [Project Options](project-options.html) as described in Lab 2. (set the options to not save .RData or .Rhistory files, and not auto-load them on startup)

2.  Make your first commit:

    1.  In the Git tab, check the box next to the `*.Rproj` file to stage it for adding them the repository

    2.  Click the "Commit" button

    3.  Enter a commit message such as "Create a new RStudio project"

    4.  Click Commit to submit the commit

    5.  Click Push to push the commit to GitHub

        1.  If RStudio prompts you for credentials, follow the method you learned in Lab 2 (use your GitHub username and a Personal Access Token for the password)

3.  Create a new R script. This is what you will use to develop the code for your assignment

## Assignment

### Read the Muskox CSV

#### Download the Muskox data

1.  Go to [Data.gov](https://catalog.data.gov/dataset), a comprehensive online platform managed by the U.S. government, offering access to a vast array of datasets generated by federal agencies. It serves as a centralized hub for users to discover, access, and utilize open data for research, analysis, and innovation purposes.

2.  Search for "muskox"

3.  Open the resource titled "Northeast muskox population sex and age composition summary for all areas (26A+B and 26C (Arctic NWR) in Alaska and northern Yukon), 1972-2011"

4.  Download the file **1972_2011_sex_age_composition_dwc.csv** to the project folder for Lab 5

    You will know it is saved in the correct folder when you can see it in the Files tab in RStudio (bottom right pane)

#### Read the Muskox CSV data into R

1.  Open your R script

2.  Load the tidyverse package, which will load the readr package for you

3.  Use the `read_csv()` function to read the data file

    IMPORTANT: do not use the similar base R function `read.csv()`.

4.  Have R treat values of -999 in the organismQuantity column as missing values (NAs)

### Read the water quality data

#### Download the water quality data

1.  Go to [Data.gov](https://catalog.data.gov/dataset)
2.  Search for "cyanobacteria"
3.  Open the resource titled "1987-2018 cyanobacteria and water quality data for 20 reservoirs"
4.  Download the file **Means_of_reservoir_nutrients.xlsx** to the project folder for Lab 5
5.  Open the file to view it
    1.  note the names and contents of the three tabs, "Read_Me", "Means_of_variables", and "Spearman_correlations"
    2.  On the "Means_of_variables" sheet, look for missing values. Take note of the value used to denote them.

#### Read the water quality XLS data into R

1.  Open your R script
2.  Load the tidyverse package, which will load the readr package for you
3.  Use the `read_excel()` function to read the "Means_of_variables" sheet
    -   note that this function is in the **readxl** package, so you will have to load that first
    -   note that the Means_of_variables sheet is not the first sheet, so you will have to use the `sheets` argument to `read_excel()`
4.  Have R treat missing values appropriately.

### Read Google Sheets data into R

See the crab data collected last week in Animal Behavior:

<https://docs.google.com/spreadsheets/d/15fozF3WTnH-PIL3Qm6RIyOFM6yk0RlxO3lBPF1ndu9s/edit?usp=sharing>

Import the 'crabs' sheet into R using `read_sheet()` from the **googlesheets4** package.

Note: the default behavior of googlesheets4 is to attempt to obtain a token for authorization. In our case, this is unnecessary because the sheet in question is viewable by the public. To prevent googlesheets4 from asking for a token, run the following code *before* you attempt to read the sheet:


``` r
library(googlesheets4)
gs4_deauth()
```

Note: when you read the sheet, the first argument to `read_sheet()` is the URL to the sheet, *or* the sheet ID, which is the long alpha-numeric string in the middle of the URL, in this case `15fozF3WTnH-PIL3Qm6RIyOFM6yk0RlxO3lBPF1ndu9s` . The sheet ID is shorter than the entire URL, so using it is preferable because it makes your code more readable.

### Enter data directly in R

Sometimes it is helpful to enter data directly into R, for example when you have a small table and using a CSV, Excel, or Google Sheet is overkill. In these cases you can us the `tibble()` and `tribble()` functions from the **tibble** package, part of the **tidyverse**.

See [Section 7.6 Data entry](https://r4ds.hadley.nz/data-import#data-entry) in R for Data Science (2e) for more details.

For this part of the assignment use the `tribble()` function to recreate the following table in R.


```{=html}
<div class="datatables html-widget html-fill-item" id="htmlwidget-ac96cb3ee4656e2e9ec3" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-ac96cb3ee4656e2e9ec3">{"x":{"filter":"none","vertical":false,"data":[["1","2","3"],["Heart disease","Cancer","COVID-19"],[695547,605213,416893],[false,false,true]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>cause<\/th>\n      <th>deaths<\/th>\n      <th>is_infectious<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"dom":"t","columnDefs":[{"className":"dt-right","targets":2},{"orderable":false,"targets":0},{"name":" ","targets":0},{"name":"cause","targets":1},{"name":"deaths","targets":2},{"name":"is_infectious","targets":3}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>
```

The table shows the three leading causes of death in the United States in 2021, [according to the National Center for Health Statistics](https://www.cdc.gov/nchs/fastats/deaths.htm). The variables include:\

-   **cause**. CHARACTER. the cause of death.

-   **deaths**. NUMERIC. the estimated number of deaths in 2021 in the US.

-   **is_infectious**. LOGICAL. a binary variable representing whether the cause of death is infectious or not; possible values include `TRUE` and `FALSE`. Note these values should be in all caps and not quoted (surrounded by quotation marks).

## Lab report

### Final render

When you are done, Render one more time to get your final lab report.

1.  Save your source documents (the R script and the Quarto document).

2.  Render the lab report Quarto document.

3.  Commit the changes to your re[pository:

    a.  Go to the Git tab in RStudio

    b.  Check the box next to each file or folder listed in the tab

    c.  Click the "Commit" button

    d.  Enter a commit message. Be specific.

    e.  Click the "Commit" button

4.  Push the commit to GitHub:

    a.  Click the Push button (up arrow) on the Git tab

    b.  Check the repository on GitHub to see if it updated

### Submission

In your web browser, navigate to your GitHub repository for this lab. Click on your lab-report.html file to view it. Copy the URL to the lab report and submit that to the Assignment on D2L.

## Lab Report Submission {#submission}

When you have completed the assignment listed above, save your files, commit your changes, and push them to GitHub.

### Create your lab report

Next, you will create a **lab report**:

1.  Create a new Quarto Document by going to File \> New File \> Quarto Document...

2.  In the dialog window, click the "Create Empty Document" button

3.  Save the document as `lab-report.qmd`

4.  Replace the default YAML header with the one described on under [Lab Reports](lab-reports.html).

5.  Make sure you are in the Visual Mode for the next steps. Click the "Visual" button on the left of the tool bar near the save button.

6.  Add a code chunk after the YAML; in it, load the **tidyverse**, **readxl**, and **googlesheets4** packages

7.  Create three level 2 headings (two hash tags followed by a space and the heading name), like this:

    
    ``` r
    ## Muskox CSV
    
    ## Water quality XLSX
    
    ## Animal Behavior Google sheets
    
    ## Mortality causes
    ```

8.  After each heading, create a code chunk and copy and paste your (already working) code from your R script to the report, one output per question. Each question should produce a table output.

9.  Render your document

### Submit your lab report

Finally, submit your lab report to D2L for grading.

1.  Again, save your files, commit your changes, and push them to GitHub.

2.  Copy the URL to your `lab-report.md` file (not the qmd) on GitHub.

3.  Submit that to the Assignment on D2L.
