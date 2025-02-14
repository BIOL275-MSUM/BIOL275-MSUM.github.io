# Git Setup

## Introduction

Git is a version control system that helps track changes to your code and collaborate with others. See [Git and Github](git-and-github.html) for more information.

In this guide, you'll learn how to **install** and **configure** Git for use with RStudio.

> **Note:** If you are working in a campus computer lab or using [Posit Cloud](https://posit.cloud/), Git is already installed. You do **not** need to install anything, but you do need to configure Git (see below).

More complete instructions can be found in the [Install Git](https://happygitwithr.com/install-git) chapter of [Happy Git and GitHub for the useR](https://happygitwithr.com/) by Jenny Bryan. Additional help can be found on the Git Documentation site at [1.5 Getting Started - Installing Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

## Installing Git

### Windows

1.  Download the Git installer from [git-scm.com](https://git-scm.com/downloads).
2.  Run the installer and accept the default settings.
3.  Ensure that "Git from the command line and also from 3rd-party software" is selected.
4.  For the default editor, you can leave it as Vim or choose another text editor.
5.  Complete the installation and restart your computer (if prompted).

### macOS

1.  [Open the Terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac) and type:

    ``` sh
    git --version
    ```

    If Git is already installed, this will display the installed version.

2.  If Git is not installed, you can install it using Homebrew:

    ``` sh
    brew install git
    ```

    If you do not have Homebrew installed, follow the instructions at [brew.sh](https://brew.sh/).

## Configuring Git

Once Git is installed, you need to introduce yourself to Git by setting your name and email. This information is used to track your contributions.

### Checking Your Git Configuration

Before setting up Git, check if you have already configured it:

``` r
library(gert)
git_config_global()
```

### Setting Up Your Git Identity

If your name and email are not set, you can configure them using `usethis`:

``` r
library(usethis)
use_git_config(user.name = "Your Name", user.email = "your.email@example.com")
```

Replace `"Your Name"` with your actual name and `"your.email@example.com"` with the email address associated with your GitHub account.

## Verifying Your Configuration

To verify that Git saved your settings, run:

``` r
git_config_global()
```

You should see your name and email in the output.

## Next Steps

-   If you plan to use Git with GitHub, set up SSH authentication or use HTTPS.
-   Learn how to create and clone repositories in RStudio.

You're now ready to use Git with RStudio!
