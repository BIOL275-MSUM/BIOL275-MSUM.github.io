# Lab 2: Introduction to data visualization

## Objectives

Learn how to:

1.  Create a scatter plot using the ggplot2 package:

    -   Create a ggplot
    -   Specify aesthetic mappings
    -   Add points
    -   Split into facets

2.  Work with GitHub

    -   Claim a repository on GitHub classroom
    -   Create an RStudio Project using the Version Control > GitHub option
    -   Set up your Git username and password
    -   Stage and commit changes to a local Git repository
    -   View a Project's past commits

## Assignment

1.  Familiarize yourself with version control by reading [About Git and GitHub].

2.  [Introduce yourself to Git] on your computer. Campus computers should have Git already installed on them. If you are using your own computer, you must first [Install Git] on it.

3.  Go to GitHub <https://github.com/> and Sign Up for an account.

4.  Claim your GitHub repository for Lab 2 by following the link posted on D2L. Be sure your new project is open in RStudio before continuing. After claiming the repository, copy the repository link (or copy the URL in the browser window).

5.  Create a new RStudio project, this time using the Version Control option instead of the New Project option. Select GitHub, then paste the link to your repository when asked. When complete, RStudio should have your lab 2 Project open, and the Git tab in the upper right should be present. If not, ask for help.

    If a dialog window opens asking you to enter your GitHub username and password, do this:

    a.  Click "Cancel" on that window

    b.  This will cause another dialog window to appear asking for just your GitHub Username. Enter it and press Enter.

    c.  This will cause another dialog window to appear asking for your GitHub password. Do not enter it. Instead, enter a Personal Access Token (PAT):

        i.  Go to the Personal Access Tokens page in your GitHub Settings: <https://github.com/settings/tokens>

        ii. Generate a new token by clicking the button "Generate new token"

        iii. The PAT will only be good for the computer you use it on. If you move to another computer later you will have to repeat this process and generate a new token. For this token, enter a **Note** describing which computer and which type of access you are granting. For example: "CB 200 Computer 193827 repo access".

        iv. Set the expiration date. I recommend setting a custom date near the end of the semester.

        v.  Select the scope by checking the "repo" box. This means the PAT will grant full control of your repositories, which is what you want RStudio to have.

        vi. Scroll down and click the green **Generate token** button.

        vii. On the next screen, copy the token that is generated.

        viii. Go back to the RStudio dialog window asking you for your GitHub password. Paste the PAT you just copied into the password field and press Enter.

6.  In RStudio, install the tidyverse and palmerpenguins packages. You may use the Install button in the Packages tab in RStudio, or use the `install.packages()` function, but if you use code, do so in the console. *Do not* include the install code in your R script. If you have previously installed a package (e.g. in a previous lab), you do not need to install it again. Check the Packages tab if you are unsure whether either of these packages is installed.

7.  Create two new R scripts, one for the examples and one for your assignment. Save them with the names `examples.R` and `assignment.R`

8.  Familiarize yourself with the R for Data Science book by Hadley Wickham and Garrett Grolemund <https://r4ds.had.co.nz/> by *skimming* the Welcome and Chapters 1 and 2

9.  Read [Chapter 3: Data visualization](https://r4ds.had.co.nz/data-visualisation.html). As you read each chapter, feel free to copy code from the book into your `examples.R` script. That script isn't part of the assignment, but you may find it useful to have code there to look at, copy, modify, etc.

10. After you read each chapter, there will be an accompanying assignment using the penguins table in the palmerpenguins dataset. You should write (and run) the code necessary to answer each question. Precede the code for each question with a comment and the question number; for example:

    
    ```r
    # question 9
    code_for_question_9
    ```

11. After reading section 3.1:

    a.  Add code to your R script to load the tidyverse package. While you're add it, add another line of code to load the palmerpenguins package.

    b.  Run those lines of code. From now on, assume that any code you write you should also run.

12. After Section 3.2:

    a.  Print the penguins table in the console (write penguins in the script, then run that line). Look at the output to remind yourself what the variables (columns) are. If you want, you can open the data in the data viewer using `View(penguins)`. Answer the following questions:

        i.  How many rows are in penguins? \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

        ii. How many columns are in penguins? \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

    b.  Run `ggplot2(data = penguins)`

        i.  What do you see? \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

    c.  Create a scatterplot that compares penguin body mass and flipper length.

        i.  Have your partner initial here to confirm you did it correctly \_\_\_\_\_\_\_\_\_

13. After Section 3.3:

    a.  Create the same scatterplot, but give each species its own color  \_\_\_\_\_\_\_\_\_\_\_

    b.  Create the same scatterplot, but give each species its own color and each island its own shape \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

14. Read section 3.4, but answer no questions.

15. Read Section 3.5, then:

    a.  Copy the code you used for the previous question (with aesthetic mappings for color and shape).

    b.  Create a new scatterplot with the same aesthetics, but use `facet_wrap()` to put each species on its own facet, with only one row of graphs (`nrow=1`) \_\_\_\_\_\_\_\_

    c.  Create a new scatterplot with the same aesthetics, but use `facet_grid()` to put each island and species on its own graph \_\_\_\_\_\_\_\_

16. Clean up your assignment.R script so it is pleasant to read. Each command (or series of related commands) should have a comment preceding it, and a blank line above and below it.

17. Save your scripts.

18. Commit the changes to your scripts:

    a.  Go to the Git tab in RStudio (upper right pane)

    b.  Check the box next to each file listed

    c.  Click the "Commit" button. Make your window bigger if you can't read which button is the commit button.

    d.  In the dialog, enter a message in the commit message box. A good commit describe what changes are being made in the files you are committing and is usually written in present tense. For example, a good commit message would be "Create project files and add example and assignment scripts".

    e.  Click the "Commit" button

19. Push the commit to GitHub:

    a.  Click the Push button (up arrow) on the Git tab

    b.  Check the repository on GitHub to see if it updated

## Submission

When you have completed the questions listed above, save your files, commit your changes, and push them to GitHub.

Then copy the URL to your GitHub repository and submit that to the Assignment on D2L.
