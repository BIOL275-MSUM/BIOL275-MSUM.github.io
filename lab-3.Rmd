# Lab 3: Data visualization

## Learning Outcomes

Students will be able to:

1.  Use Git and GitHub to manage a project
2.  Use Quarto to author an HTML document
3.  Create graphs using the ggplot2 package
4.  Understand what aesthetic mappings are and define them when graphing
5.  Visualize categorical and numerical distributions using bar charts and histograms
6.  Visualize the relationship between two variables using boxplots, density plots, stacked bar charts, relative frequency plots, scatterplots,
7.  Identify the parts of a boxplot and define them
8.  Visualize the relationships between three variables by mapping additional aesthetics like color and shape and using facets

## Overview

In this lab, you will work in pairs as you read the instructions below and follow them. Your instructor will help as needed. You may begin as soon as you arrive in lab.

In steps 1-5, you will learn more about our classroom workflow which relies on git, GitHub, and GitHub Classroom.

In steps 6-10, you will read [Chapter 1 Data Visualization](https://r4ds.hadley.nz/data-visualize) from R for Data Science (2e)[^lab-3-1] to deepen your understanding of data visualization methods using ggplot2. As you read, you will answer the questions outlined below in an R Markdown document. You will turn in your answers by pushing your files to GitHub and submitting a link to your GitHub repository on D2L.

[^lab-3-1]: Wickham, H., M. Çetinkaya-Rundel, and G. Grolemund. 2023. R for data science: import, tidy, transform, visualize, and model data. Second edition. O’Reilly Media, Inc., Sabastopol, California, USA. <https://r4ds.hadley.nz/>

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

## Data visualization

You are now ready to complete the data visualization part of the lab.

The lab manual for this course is [R for Data Science (2e)](https://r4ds.hadley.nz/) by Hadley Wickham, Mine Çetinkaya-Rundel, and Garrett Grolemund. Feel free to *skim* the Introduction, which covers much of what you learned in your previous labs.

Navigate to [Chapter 1 Data Visualization](https://r4ds.hadley.nz/data-visualize) and begin reading.

If you have not already, open the R script in your project named `chapter-1-practice.R`.

As you read, copy code from the book and paste it into your R script. This script will not be graded, it is just for you to practice running code and to make sure code works before pasting it into your report.

Some sections will end with a set of exercises. The exercises contain prompts to generate R code or questions to assess your understanding.

After reading Section 1.2, go through the exercises. When you know how to answer each question, go to your `lab-report.qmd` document and put your answer after each question. There is a placeholder "answer" for each one.

When you need to enter code, you will see an R code chunk. Copy the working code you have from your R script `chapter-1-practice.R` and paste it into the code chunk.

Repeat for sections 1.4 and 1.5.

At any point, you can see how your lab report looks by clicking the Render button.

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

## References

Wickham, H., M. Çetinkaya-Rundel, and G. Grolemund. 2023. R for data science: import, tidy, transform, visualize, and model data. Second edition. O’Reilly Media, Inc., Sabastopol, California, USA. <https://r4ds.hadley.nz/>
