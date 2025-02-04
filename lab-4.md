# Lab 4: Data import

## Learning Outcomes

By the end of this lab, students will be able to:

1.  Use Git and GitHub to manage a project
2.  Import datasets in various formats into R
3.  Deal with common data import issues
4.  Enter small datasets directly into R

## Get started with Git

1.  Familiarize yourself with version control by reading [About Git and GitHub].

2.  [Introduce yourself to Git] on your computer. Campus computers should have Git already installed on them.

    -   NOTE: If you are using your own computer, you must first [Install Git] on it. If you are using Posit Cloud, git should already be installed.

3.  Claim your GitHub repository for this lab by following the link posted on D2L in this lab's content module. Because this is your first time using GitHub Classroom, you will need to select your name from the list to link your GitHub account with your instructor's record for you.

4.  After claiming the repository, **copy the repository link** (or copy the URL in the browser window), which you will use in the next step.

5.  Create a new RStudio project, this time using the **Version Control** option instead of the New Project option. Select **Git**, then **paste the link to your repository** in the Repository URL field. Press the tab key to autofill the Project Directory Name field with the name of your GitHub repository.

    If a dialog window opens asking you to enter your GitHub username and password, do this:

    a.  If asked for your GitHub username and password, click "Token" or "Personal Access Token" instead. Follow instructions below to get your Personal Access Token (PAT):

        i.  Go to the Personal Access Tokens page in your GitHub Settings: <https://github.com/settings/tokens>

        ii. Generate a new token by clicking the button "Generate new token", then click "Generate new token (classic)" and confirm access using two-factor authentication.

        iii. The PAT will only be good for the computer you use it on. If you move to another computer later you will have to repeat this process and generate a new token. If you are on a campus computer that gets wiped periodically, you may need to repeat this process. If you are on your own computer, or Posit Cloud, you should only need to do this once

        iv. For this token, enter a **Note** describing which computer and which type of access you are granting. For example: "LO 90 Computer 193827 repo access".

        v.  Set the expiration date. I recommend setting a custom date near the end of the semester.

        vi. Select the scope by checking the "**repo**" box. This means the PAT will grant full control of your repositories, which is what you want RStudio to have.

        vii. Scroll down and click the green **Generate token** button.

        viii. On the next screen, copy the token that is generated.

        ix. Go back to the RStudio dialog window asking you for your GitHub password. Paste the PAT you just copied into the password field and press Enter.

6.  When complete, RStudio should have your project open and **the Git tab in the upper right should be present**. If not, ask for help.

## Claim your repository from GitHub Classroom

Your instructor has created a blank repository for you using GitHub Classroom.

1.  Go to the course D2L page

2.  Navigate to the module for this lab

3.  Follow the link to claim your GitHub Classroom repository. After claiming your repository, copy its URL

## Clone the repository to your machine

1.  In RStudio, create a New Project

2.  Select the Version Control option, then GitHub

3.  Paste the URL you copied, and press tab to auto-complete the directory name

4.  Select a parent directory in which to place your new project folder, probably either `~` or `~/R`.

5.  Click OK.

## Prepare your working environment

1.  Once RStudio has started, double-check your [Project Options](project-options.html) as described in Lab 2. (set the options to not save .RData or .Rhistory files, and not auto-load them on startup)

2.  Make your first commit:

    1.  In the Git tab, check the box next to the `*.Rproj` and `.gitignore` files to stage it for adding them the repository

    2.  Click the "Commit" button

    3.  Enter a commit message such as "Create a new RStudio project"

    4.  Click Commit to submit the commit

    5.  Click Push to push the commit to GitHub

        1.  If RStudio prompts you for credentials, follow the method you learned in Lab 2 (use your GitHub username and a Personal Access Token for the password)

3.  Create a new R script. This is what you will use to develop the code for your assignment

## Make your first Git commit

Eventually you will want to save your HTML lab report and its associated files in a way that your instructor can access them. This is done by adding those files to your repository on GitHub.

How do you do that? That involves "committing" the changes on your computer first, then "pushing" those changes to GitHub.

In Git, a "commit" is a set of changes to source files that are saved together with a description of the changes. Commits are the basic unit of version control. You can look at a list of past commits and know exactly what each one changed. You can also revert files back to the way they were after a particular commit, allowing you to see various versions of your documents or even permanently undo changes you have committed.

Now its time to make your first commit.

1.  **Stage the change.** In the Git tab, you will now see two files listed: the R Project file (project-name.Rproj) file and the .gitignore file, each with two yellow quesion marks next to it. This signifies that git sees new files or folders that you have not told it what to do with.

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

## Download data files

Start by downloading two data files and putting them in a data folder within the project folder. Follow the guidelines for [Downloading Files] and [Organizing Data].

### Download the Muskox data

1.  Go to [Data.gov](https://catalog.data.gov/dataset), a comprehensive online platform managed by the U.S. government, offering access to a vast array of datasets generated by federal agencies. It serves as a centralized hub for users to discover, access, and utilize open data for research, analysis, and innovation purposes.

2.  Search for "muskox"

3.  Open the resource titled "Northeast muskox population sex and age composition summary for all areas (26A+B and 26C (Arctic NWR) in Alaska and northern Yukon), 1972-2011"

4.  Download the file **1972_2011_sex_age_composition_dwc.csv** to the project folder.

    You will know it is saved in the correct folder when you can see it in the Files tab in RStudio (bottom right pane)

### Download the water quality data

1.  Go to [Data.gov](https://catalog.data.gov/dataset)
2.  Search for "cyanobacteria"
3.  Open the resource titled "1987-2018 cyanobacteria and water quality data for 20 reservoirs"
4.  Download the file **Means_of_reservoir_nutrients.xlsx** to the project folder for Lab 5
5.  Open the file to view it
    1.  note the names and contents of the three tabs, "Read_Me", "Means_of_variables", and "Spearman_correlations"
    2.  On the "Means_of_variables" sheet, look for missing values. Take note of the value used to denote them.

## Read the data into R

Read chapter from R for Data Science (2e). - [Chapters 7 Data Import](https://r4ds.hadley.nz/data-import)

### Read the Muskox CSV data

1.  Open your R script

2.  Load the tidyverse package, which will load the readr package for you

3.  Use the `read_csv()` function to read the data file

    IMPORTANT: do not use the similar base R function `read.csv()`.

4.  Have R treat values of -999 in the organismQuantity column as missing values (NAs)

### Read the water quality XLS data

1.  Open your R script
2.  Load the tidyverse package, which will load the readr package for you
3.  Use the `read_excel()` function to read the "Means_of_variables" sheet
    -   note that this function is in the **readxl** package, so you will have to load that first
    -   note that the Means_of_variables sheet is not the first sheet, so you will have to use the `sheets` argument to `read_excel()`
4.  Have R treat missing values appropriately.

## Read Google Sheets data into R

Read chapter from R for Data Science (2e). - [Chapter 20 Spreadsheets](https://r4ds.hadley.nz/spreadsheets)

See the crab data collected last week in Animal Behavior:

<https://docs.google.com/spreadsheets/d/15fozF3WTnH-PIL3Qm6RIyOFM6yk0RlxO3lBPF1ndu9s/edit?usp=sharing>

Import the 'crabs' sheet into R using `read_sheet()` from the **googlesheets4** package.

Note: the default behavior of googlesheets4 is to attempt to obtain a token for authorization. In our case, this is unnecessary because the sheet in question is viewable by the public. To prevent googlesheets4 from asking for a token, run the following code *before* you attempt to read the sheet:


``` r
library(googlesheets4)
gs4_deauth()
```

Note: when you read the sheet, the first argument to `read_sheet()` is the URL to the sheet, *or* the sheet ID, which is the long alpha-numeric string in the middle of the URL, in this case `15fozF3WTnH-PIL3Qm6RIyOFM6yk0RlxO3lBPF1ndu9s` . The sheet ID is shorter than the entire URL, so using it is preferable because it makes your code more readable.

## Enter data directly in R

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

## Assignment submission

1.  Save changes in your R script
2.  Be sure your data is in a data folder and data/ has been added to .gitignore
3.  Stage all your changes by checking the boxes next to files in the git tab
4.  Commit the changes
5.  Push the changes
6.  Go to Github and copy the URL to your lab 4 repository online
7.  Submit the URL to your lab 4 assignment on D2L
