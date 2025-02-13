# EDA Repository Setup

For this assignment, you will set up a GitHub repository for your group project. Your repository will be the central place where your team collaborates on your exploratory data analysis (EDA).

## 1. Claim Your Group Repository

Each group will use a GitHub Classroom repository for their project.

1.  **Access the Assignment Link**
    -   Log into D2L and navigate to the Biostatistics course.
    -   Locate the *Exploratory Data Analysis Group Assignment* link.
    -   Click the link to access GitHub Classroom.
2.  **Claim Your Repository:**
    -   One person should claim the repository on behalf of the group.
    -   Sign in to GitHub if prompted and accept the assignment.
    -   Name the repository using the last names of each group member, separated by hyphens (e.g., `merkord-broderick`).
    -   Next, other group members should follow the same D2L link, find the repository, and join it.
3.  **Clone the Repository:**
    -   All group members should do this.
    -   Copy the repository URL from GitHub.
    -   Open RStudio.
    -   Go to *File* \> *New Project* \> *Version Control* \> *Git*.
    -   Paste the URL and choose a directory on your computer.
    -   Click *Create Project*.

## 2. Configure Project Options

After cloning, adjust your RStudio project settings:

-   Enable Git version control if it is not already active.
-   Adjust settings as needed (see [Project Options](project-options.html) for details).

## 3. Set Up Your Folder Structure

Organize your repository with the following folders:

-   `data/` – Store datasets here.
-   `output/` – Save graphs and other output here.

Add these folders to your `.gitignore` file to prevent them from being tracked by Git.

For guidance on structuring your project, refer to [Organizing Data](organizing-data.html).

## 4. Create Essential Files

Each group should create the following files.

-   **Individual R Script** (`your-name.R`)\
    Each team member should create an R script to experiment with code.

-   **Quarto Report File** (`eda.qmd`)\
    This is your shared document for writing the report.

-   **README File** (`README.md`)\
    A README file provides a brief summary of your project. To create one, install the **usethis** package and run the following command in the R console:

    ``` r
    usethis::use_readme_md()
    ```

    Note: only one person should create the shared files (report and readme files), while each person should create their own R script.

## 5. Commit and Push Your Changes

1.  Save all open files in RStudio
2.  Use the Git tab in RStudio to **stage** and **commit** your changes.
3.  **Push** updates to GitHub.
4.  Verify your files are visible in your repository online.
5.  You may need to **Pull** updates from GitHub before pushing, if another group member has pushed a commit since the last time you pulled.

## 6. Update your README

Your README.md file should be updated to include the following:

-   Project Title

-   A sentence describing the project; e.g. an expanded version of "this is an exploratory data analysis for Biostatistics"

-   List of team members

-   Project Abstract

-   Instructions for downloading and saving the necessary data files

Edit the README file (either right there on GitHub or RStudio after cloning the repository) to include your names, the project title, and the abstract. The names and title should be formatted as second-level headings. The entire readme should look something like this\*.


``` md
# MacArthur and Wilson 2022 EDA Project

## An equilibrium theory of insular zoogeography*

by Robert MacArthur and E. O. Wilson

An exploratory data analysis for BIOL 275 Biostatistics at Minnesota State University Moorhead. Instructor: Chris Merkord

### Abstract

A graphical equilibrium model, balancing immigration and extinction rates of species, has been developed which appears fully consistent with the fauna-area curves and the distance effect seen in land and freshwater bird faunas of the Indo-Australian islands. The establishment of the equilibrium condition allows the development of a more precise zoogeographic theory than hitherto possible. 

One new and non-obvious prediction can be made from the model which is immediately verifiable from existing data, that the number of species increases with area more rapidly on far islands than on near ones. Similarly, the number of species on large islands decreases with distance faster than does the number of species on small islands.

As groups of islands pass from the unsaturated to saturated conditions, the variance-to-mean ratio should change from unity to about one-half. When the faunal buildup reaches 90% of the equilibrium number, the extinction rate in species/year should equal 2.303 times the variance divided by the time (in years) required to reach the 90% level. The implications of this relation are discussed with reference to the Krakatau faunas, where the buildup rate is known.

A "radiation zone," in which the rate of intra-archipelagic exchange of autochthonous species approaches or exceeds extraarchipelagic immigration toward the outer limits of the taxon's range, is predicted as still another consequence of the equilibrium condition. This condition seems to be fulfilled by conventional information but cannot be rigorously tested with the existing data.

Where faunas are at or near equilibrium, it should be possible to devise indirect estimates of the actual immigration and extinction rates, as well as of the times required to reach equilibrium. It should also be possible to estimate the mean dispersal distance of propagules overseas from the zoogeographic data. Mathematical models have been constructed to these ends and certain applications suggested.

The main purpose of the paper is to express the criteria and implications of the equilibrium condition, without extending them for the present beyond the Indo-Australian bird faunas.
```

\*Note: this is not a real abstract, it is meant only as an example for how to format your abstract.
